//
// Created by imbaya on 2019/2/15.
//

//
#include<jni.h>
#include "RefInvoke.h"


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

//之后试试把这俩标记去掉
JNIEXPORT JNICALL
void  donative(JNIEnv *env, jobject obj,jstring path);
JNIEXPORT JNICALL
void  donative2(JNIEnv *env, jobject obj);

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
    //构造新的classloader
    jclass dexClassLoader_class=env->FindClass("dalvik/system/DexClassLoader");
    jmethodID dexClassLoader_id=env->GetMethodID(dexClassLoader_class,"<init>","(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V");
    jobject dexClassLoader=env->NewObject(dexClassLoader_class,dexClassLoader_id,path, NULL,nownativeLibraryDir,old_loader);
    //设置新的classloader
    refInvoke.setFieldOjbect(loadedapk,"mClassLoader","Ljava/lang/ClassLoader;",dexClassLoader);

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













