//
// Created by imbaya on 2019/2/16.
//

#ifndef PROTECTAPK1_REFINVOKE_H
#define PROTECTAPK1_REFINVOKE_H


#include <jni.h>
//反射调用工具类
class RefInvoke{
public:

    //构造
    RefInvoke(JNIEnv* jnienv):env(jnienv){}






    //执行返回jobject的静态方法
    jobject  invokeStaticObjectMethod(const char *classname, const char *methodname, const char *type,...);

    //执行返回jobject的对象方法
    jobject invokeObjectMethod(jobject obj, const char *methodname, const char *type,...);

    //执行返回boolean的对象方法
    jboolean invokeBooleanMethod(jobject obj, const char *methodname, const char *type,...);

    //执行返回void的对象方法
    void invokeVoidMethod(jobject obj, const char *methodname, const char *type,...);

    //获取对象jobiect成员
    jobject  getFieldOjbect(jobject obj, const char *fieldname, const char *type);

    //获取静态jobject成员
    jobject getStaticFieldOjbect(const char *classname, const char *fieldname, const char *type);

    //设置对象object成员
    void setFieldOjbect(jobject obj, const char *fieldname, const char *type,jobject val);

    //设置静态object成员
    void setStaticOjbect(const char*classname, const char *fieldname, const char *type,jobject val);

private:
    JNIEnv* env;
};















#endif //PROTECTAPK1_REFINVOKE_H
