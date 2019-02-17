//
// Created by imbaya on 2019/2/10.
//

#include "InlineHook.h"
#include <jni.h>
//自定义回调
void EvilHookStubFunctionForIBored(user_pt_regs *regs) //参数regs就是指向栈上的一个数据结构，由第二部分的mov r0, sp所传递。
{

    char *p="Hello from imbaya";
    regs->regs[0]=(__u64)p;
}

//加载so时执行的
//void hooktest() __attribute__((constructor));
void hooktest()
{
}

void *retp;

extern "C"
JNIEXPORT void JNICALL
Java_com_imbaya_androidhook_MainActivity_inlinehook(JNIEnv *env, jobject instance) {

    retp=DoInLineHook("libhello.so",0x130D4,EvilHookStubFunctionForIBored);

}

extern "C"
JNIEXPORT void JNICALL
Java_com_imbaya_androidhook_MainActivity_deleteinlinehook(JNIEnv *env, jobject instance) {

    DeleteInLineHook(retp);

}