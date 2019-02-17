//
// Created by imbaya on 2019/2/10.
//

#ifndef HOOK1_INLINEHOOK_H
#define HOOK1_INLINEHOOK_H

#include <string>
#include <sys/ptrace.h>


//hook模块名、VA偏移、回调函数
//返回hook的VA地址
void* DoInLineHook(std::string module, unsigned long off,void (*onCallBack)(struct user_pt_regs *));

//传入hook的VA地址，将其hook删除
void DeleteInLineHook(void *pHookAddr);


#endif //HOOK1_INLINEHOOK_H
