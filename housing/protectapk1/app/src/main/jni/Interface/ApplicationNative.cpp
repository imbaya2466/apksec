//
// Created by imbaya on 2019/2/15.
//

//
#include<jni.h>
#include "RefInvoke.h"
#include <sys/system_properties.h>
#include <stdlib.h>
#include "InlineHook.h"
#include <dlfcn.h>
#include <vector>
#include <string>
#include<android/log.h>
#include<memory.h>
#include <stdio.h>


#define TAG "imbaya" // 这个是自定义的LOG的标识
#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG,TAG ,__VA_ARGS__) // 定义LOGD类型
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO,TAG ,__VA_ARGS__) // 定义LOGI类型
#define LOGW(...) __android_log_print(ANDROID_LOG_WARN,TAG ,__VA_ARGS__) // 定义LOGW类型
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR,TAG ,__VA_ARGS__) // 定义LOGE类型
#define LOGF(...) __android_log_print(ANDROID_LOG_FATAL,TAG ,__VA_ARGS__) // 定义LOGF类型



//c库的符号必须用extern c来引用，否则连接时符号解析不对
//系统的.h文件内有cpp宏判断，所以符号引用正确
extern "C"
{
    #include "util.h"
    #include "xhook.h"
}


/*
//反调试、解密so
extern "C"  void _init(void){

}
//反调试、解密JNI_OnLoad
__attribute__((constructor,visibility("hidden"))) void init_array_0(void) {

}
//反调试、解密、动态加载核心so
__attribute__((constructor,visibility("hidden"))) void  init_array_1(void) {

}
*/



//以下内容需要移动到核心so中-在不落地linker之后

//加密密匙
unsigned int dwKey=0x12345678;


//java层调用
void  donative(JNIEnv *env, jobject obj,jstring path);
void  donative2(JNIEnv *env, jobject obj);

//动态加载dex
static
jobject loadDex(JNIEnv* env,jstring path,jstring nownativeLibraryDir,jobject old_classloader);
jobject loadDex_oat_26(JNIEnv* env,jstring path,jstring nownativeLibraryDir,jobject old_classloader);

static JNINativeMethod methods[] = {
        {"donative", "(Ljava/lang/String;)V", (void*)donative},
        {"donative2", "()V", (void*)donative2}
};



//注册java调用。
JNIEXPORT JNICALL  jint JNI_OnLoad(JavaVM* vm, void* reserved)
{
    JNIEnv *g_env;
    if(JNI_OK != vm->GetEnv((void**)&g_env, JNI_VERSION_1_6)){
        return -1;
    }

    jclass native_class = g_env->FindClass("FFF/ya/Artifical");


    int ret=g_env->RegisterNatives(native_class, methods, 2);

    return JNI_VERSION_1_6;
}

//原application名，需要从某处读取
jstring ApplicationName;

jobject currentActivityThread;
jobject boundApplication;
jobject loadedapk;

JNIEXPORT  JNICALL
void donative(JNIEnv *env, jobject obj,jstring path)
{
    ApplicationName=env->NewStringUTF("com.example.imbaya.protectapk2.MyApplication");

    //反射工具类
    RefInvoke refInvoke(env);

    //获取所需对象
    currentActivityThread=refInvoke.invokeStaticObjectMethod("android/app/ActivityThread","currentActivityThread","()Landroid/app/ActivityThread;");
    boundApplication=refInvoke.getFieldOjbect(currentActivityThread,"mBoundApplication","Landroid/app/ActivityThread$AppBindData;");
    loadedapk=refInvoke.getFieldOjbect(boundApplication,"info","Landroid/app/LoadedApk;");

    //修改application信息存储类
    jobject applicationInfo_LoadedApk=refInvoke.getFieldOjbect(loadedapk,"mApplicationInfo","Landroid/content/pm/ApplicationInfo;");
    jobject applicationInfo_AppBindData=refInvoke.getFieldOjbect(boundApplication,"appInfo","Landroid/content/pm/ApplicationInfo;");

    refInvoke.setFieldOjbect(applicationInfo_LoadedApk,"className","Ljava/lang/String;",ApplicationName);
    refInvoke.setFieldOjbect(applicationInfo_AppBindData,"className","Ljava/lang/String;",ApplicationName);

    //获取nativelib路径
    jstring nownativeLibraryDir=(jstring)refInvoke.getFieldOjbect(applicationInfo_LoadedApk,"nativeLibraryDir","Ljava/lang/String;");
    //旧的loader
    jobject old_loader=refInvoke.getFieldOjbect(loadedapk,"mClassLoader","Ljava/lang/ClassLoader;");


/*
    //构造新的classloader
    jclass dexClassLoader_class=env->FindClass("dalvik/system/DexClassLoader");
    jmethodID dexClassLoader_id=env->GetMethodID(dexClassLoader_class,"<init>","(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V");
    jobject dexClassLoader=env->NewObject(dexClassLoader_class,dexClassLoader_id,path, NULL,nownativeLibraryDir,old_loader);
*/
    jobject  new_classLoader=loadDex(env,path,nownativeLibraryDir,old_loader);

    //设置新的classloader
    refInvoke.setFieldOjbect(loadedapk,"mClassLoader","Ljava/lang/ClassLoader;",new_classLoader);

    //保存全局引用
    currentActivityThread=env->NewGlobalRef(currentActivityThread);
    boundApplication=env->NewGlobalRef(boundApplication);
    loadedapk=env->NewGlobalRef(loadedapk);
    ApplicationName=(jstring)env->NewGlobalRef(ApplicationName);

}

JNIEXPORT  JNICALL
void  donative2(JNIEnv *env, jobject obj)
{
    RefInvoke refinvoke(env);
    //LoadedApk.mApplication删除
    refinvoke.setFieldOjbect(loadedapk,"mApplication","Landroid/app/Application;",NULL);
    //mActivityThread.mAllApplications.add(app);删除
    jobject oldApplication=refinvoke.getFieldOjbect(currentActivityThread,"mInitialApplication","Landroid/app/Application;");

    jobject mAllApplications=refinvoke.getFieldOjbect(currentActivityThread,"mAllApplications","Ljava/util/ArrayList;");

    jboolean ret=refinvoke.invokeBooleanMethod(mAllApplications,"remove","(Ljava/lang/Object;)Z",oldApplication);

    //执行makeApplication，此时的ApplicationInfo与classloader是修改过的
    jobject app=refinvoke.invokeObjectMethod(loadedapk,"makeApplication","(ZLandroid/app/Instrumentation;)Landroid/app/Application;",
                                             false,NULL);

    //恢复makeApplication到oncreate之间的操作
    refinvoke.setFieldOjbect(currentActivityThread,"mInitialApplication","Landroid/app/Application;",app);
    //TODO:这里有bug
    jobject providers=refinvoke.getFieldOjbect(boundApplication,"providers","Ljava/util/List;");
    refinvoke.invokeVoidMethod(currentActivityThread,"installContentProviders","(Landroid/content/Context;Ljava/util/List;)V",app,providers);

    //执行原oncreat
    refinvoke.invokeVoidMethod(app,"onCreate","()V");


    //释放全局引用
    env->DeleteGlobalRef(currentActivityThread);
    env->DeleteGlobalRef(boundApplication);
    env->DeleteGlobalRef(loadedapk);
    env->DeleteGlobalRef(ApplicationName);
}


/*
 * 选择合适的dex加载方式，返回classloader对象
 * 当不落地加载时，path为null，此时通过某处加载dex数据到内存
 */
static
jobject loadDex(JNIEnv* env,jstring path,jstring nownativeLibraryDir,jobject old_classloader)
{
    char value[1024] = {0};
    __system_property_get("ro.build.version.sdk", value);
    int version=atoi(value);

    jobject  ret=NULL;

    //落地加密加载，且使用oat优化
    if(path!=NULL&&version>=26)
    {
        ret=loadDex_oat_26(env,path,nownativeLibraryDir,old_classloader);
        return ret;
    }

    //不落地加密加载，不使用oat优化
    if (path==NULL&&version>=26)
    {

        return ret;
    }

    //落地加密加载，不使用oat
    if (path!=NULL&&version>=21)
    {

        return ret;
    }


    return NULL;
}



std::string dexpath;
std::string  vdexpath;
//hook不调用时，当心apk已经是oat过的了
//这里的断点可以使用
//解密dex----不应该使用落地解密，应该内存中解密。因此此处需要dex2oat的知识与跨进程hook
void loadDex_oat_26_hookExec_begin(user_pt_regs *regs)
{
    //TODO:dex2oat进程的dex解密
    std::vector<std::string> *arg=(std::vector<std::string> *)regs->regs[0];
    LOGD("执行exec");
    //获取dex、vdex路径
    int count = arg->size();
    for (int i = 0; i < count;i++)
    {
        if((*arg)[i].find("--dex-file")!=-1)
        {
            dexpath=(*arg)[i].substr((*arg)[i].find("/"));
        }
        if((*arg)[i].find("--oat-location")!=-1)
        {
            vdexpath=(*arg)[i].substr((*arg)[i].find("/"));
            vdexpath[vdexpath.size()-4]='v';
        }
    }
    (*arg)[0]="NULL";//阻止oat
}
//加密dex，加密vdex---应该在dex2oat处进行
void loadDex_oat_26_hookExec_end(user_pt_regs *regs)
{
    regs->regs[0]=0;//返回false
}
/*
//解密内存态dex与vdex
//即使oat失败了也能正常使用，因为这里解密了dex的内存态
//mmap弃用inlinehook
void loadDex_oat_26_hook_mmapret(user_pt_regs *regs)
{
    char *p=(char*)regs->regs[0];
    //r0地址、r1大小、r4句柄 mmap返回时除r1参数不变的
    LOGD("%c%c%c%c",*p,*(p+1),*(p+2),*(p+3));
    LOGD("执行mmap");
    unsigned int *dwData=(unsigned int *)p;
    unsigned long length=regs->regs[1];
    void *DataEnd=(void*)((unsigned long)p+length-4);
    LOGD("dwData:%p",dwData);
    LOGD("length:%lu",length);
    LOGD("DataEnd:%p",DataEnd);

    if(memcmp(p,"dex",3)==0)
    {
        dwData++;//魔数没加密
        ChangePageProperty(p,length);
        //可能会少解密<4字节
        for(;(unsigned long)dwData<=(unsigned long)DataEnd;dwData++)
        {
            *dwData=*dwData^dwKey;
        }
        LOGD("解密dex成功");
    }
    LOGD("mmap执行完");


}
*/


void* (*old_mmap)(void* start,size_t length,int prot,int flags,int fd,off_t offset);

void* testmmap(void* start,size_t length,int prot,int flags,int fd,off_t offset) {

    void* addr =  old_mmap(start, length, prot, flags, fd, offset);

    if(memcmp(addr,"dex",3)==0)
    {
        unsigned int *dwData=(unsigned int *)addr;
        void *DataEnd=(void*)((unsigned long)addr+length-4);
        LOGD("dwData:%p",dwData);
        LOGD("length:%lu",length);
        LOGD("DataEnd:%p",DataEnd);

        dwData++;//魔数没加密
        ChangePageProperty(addr,length);
        //可能会少解密<4字节
        for(;(unsigned long)dwData<=(unsigned long)DataEnd;dwData++)
        {
            *dwData=*dwData^dwKey;
        }
        LOGD("解密dex成功");
    }
    LOGD("mmap执行完");

    return addr;
}




jobject loadDex_oat_26(JNIEnv* env,jstring path,jstring nownativeLibraryDir,jobject old_classloader)
{


    //hook

    void *libart=fake_dlopen("/system/lib64/libart.so",0);
    void *Exe_VA=fake_dlsym(libart,"_ZN3art4ExecERNSt3__16vectorINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS5_IS7_EEEEPS7_");
    void *Exe_hookbeg=DoInLineHook((unsigned long)Exe_VA,loadDex_oat_26_hookExec_begin);
    void *Exe_hookend=DoInLineHook((unsigned long)Exe_VA+0xCC,loadDex_oat_26_hookExec_end);

    //解密读到内存的vdex
    /*
	//inline hook不可以处理这里的mmap
    void *libc=fake_dlopen("/system/lib64/libc.so",0);
    void *mmap_VA=fake_dlsym(libc,"mmap");
    void *mmap_hookend=DoInLineHook((unsigned long)mmap_VA+20,loadDex_oat_26_hook_mmapret);
    */
    //mmap的调用改用xhook 俩个反斜杠为了转义.   
    xhook_register(".*art\\.so$", "mmap", (void*)testmmap, (void **)(&old_mmap));
    xhook_refresh(0);

    //TODO:解密加密odex，这个文件是elf文件，使用dlopen打开的，解密需要linker实现

    LOGD("hook完成");

    //构造新的classloader
    jclass dexClassLoader_class=env->FindClass("dalvik/system/DexClassLoader");
    jmethodID dexClassLoader_id=env->GetMethodID(dexClassLoader_class,"<init>","(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V");
    jobject dexClassLoader=env->NewObject(dexClassLoader_class,dexClassLoader_id,path, NULL,nownativeLibraryDir,old_classloader);
    LOGD("classloader完成");

    //取消hook
  //  DeleteInLineHook(mmap_hookend);
    DeleteInLineHook(Exe_hookbeg);
    DeleteInLineHook(Exe_hookend);
    fake_dlclose(libart);
   // fake_dlclose(libc);
    xhook_clear();


    return dexClassLoader;
}



