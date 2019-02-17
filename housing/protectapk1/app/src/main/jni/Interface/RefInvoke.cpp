//
// Created by imbaya on 2019/2/16.
//

#include "RefInvoke.h"

/*
 * 执行静态方法，返回object
 * classname:类名完整名称以/分割以
 * methdname:方法名
 * type:方法签名-类名完整名称  以L开头  以/分割  以;结尾   ------要;结尾！！！！
 * ...:方法参数
 */
jobject  RefInvoke::invokeStaticObjectMethod(const char *classname, const char *methodname, const char *type,...)
{
    jclass jclazz = env->FindClass(classname);
    jmethodID methodID = env->GetStaticMethodID(jclazz, methodname, type);

    va_list args;
    va_start(args, type);
    jobject  ret=env->CallStaticObjectMethodV(jclazz, methodID, args);
    va_end(args);
    return ret;
}

/*
 * 执行对象方法，返回object
 * obj:对象
 * classname:类名完整名称以/分割
 * methdname:方法名
 * type:方法签名
 * ...:方法参数
 */
jobject RefInvoke::invokeObjectMethod(jobject obj, const char *methodname, const char *type,...)
{
    jclass jclazz = env->GetObjectClass(obj);
    jmethodID methodID = env->GetMethodID(jclazz, methodname, type);

    va_list args;
    va_start(args, type);
    jobject  ret=env->CallObjectMethodV(obj, methodID, args);
    va_end(args);
    return ret;
}

/*
 * 执行对象方法，返回boolean
 * obj:对象
 * classname:类名完整名称以/分割
 * methdname:方法名
 * type:方法签名
 * ...:方法参数
 */

jboolean  RefInvoke::invokeBooleanMethod(jobject obj, const char *methodname, const char *type,...)
{
    jclass jclazz = env->GetObjectClass(obj);
    jmethodID methodID = env->GetMethodID(jclazz, methodname, type);

    va_list args;
    va_start(args, type);
    jboolean  ret=env->CallBooleanMethodV(obj, methodID, args);
    va_end(args);
    return ret;
}

/*
 * 执行对象方法，返回boolean
 * obj:对象
 * classname:类名完整名称以/分割
 * methdname:方法名
 * type:方法签名
 * ...:方法参数
 */

void RefInvoke::invokeVoidMethod(jobject obj, const char *methodname, const char *type,...)
{
    jclass jclazz = env->GetObjectClass(obj);
    jmethodID methodID = env->GetMethodID(jclazz, methodname, type);

    va_list args;
    va_start(args, type);
    env->CallVoidMethodV(obj, methodID, args);
    va_end(args);
}

/*
 * 获取object对象成员
 * obj:对象
 * fieldname:成员名
 * type:成员类型
 */
jobject  RefInvoke::getFieldOjbect(jobject obj, const char *fieldname, const char *type)
{
    jclass clazz=env->GetObjectClass(obj);
    jfieldID id=env->GetFieldID(clazz,fieldname,type);
    jobject ret=env->GetObjectField(obj,id);
    return ret;
}


/*
 * 获取object静态成员
 * classname:类型
 * fieldname:成员名
 * type:成员类型
 */
jobject RefInvoke::getStaticFieldOjbect(const char *classname, const char *fieldname, const char *type)
{
    jclass clazz=env->FindClass(classname);
    jfieldID id=env->GetStaticFieldID(clazz,fieldname,type);
    jobject ret=env->GetStaticObjectField(clazz,id);
    return ret;
}

/*
 * 设置object成员
 * obj:要设置的对象
 * fieldname:成员名
 * type:成员类型
 * val:新object
 */
void RefInvoke::setFieldOjbect(jobject obj, const char *fieldname, const char *type, jobject val)
{
    jclass clazz=env->GetObjectClass(obj);
    jfieldID id=env->GetFieldID(clazz,fieldname,type);
    env->SetObjectField(obj,id,val);
}


/*
 * 设置object静态成员
 * classname:类型
 * fieldname:成员名
 * type:成员类型
 * val:新object
 */
void RefInvoke::setStaticOjbect(const char *classname, const char *fieldname, const char *type, jobject val)
{
    jclass clazz=env->FindClass(classname);
    jfieldID id=env->GetStaticFieldID(clazz,fieldname,type);
    env->SetStaticObjectField(clazz,id,val);
}



















