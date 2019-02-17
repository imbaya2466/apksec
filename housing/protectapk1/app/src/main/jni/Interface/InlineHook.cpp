#include <map>
#include <string>



#ifndef PAGE_SIZE
#define PAGE_SIZE 4096
#endif

#define PAGE_START(addr)	(~(PAGE_SIZE - 1) & (addr))
#define SET_BIT0(addr)		(addr | 1)
#define CLEAR_BIT0(addr)	(addr & 0xFFFFFFFE)
#define TEST_BIT0(addr)		(addr & 1)

#define ACTION_ENABLE	0
#define ACTION_DISABLE	1

extern "C"
{
    #include "Ihook.h"
}




typedef std::map<void*,INLINE_HOOK_INFO*> InlineHookInfoPVec;
static InlineHookInfoPVec gs_vecInlineHookInfo;     //管理HOOK点

void before_main() {
    LOGI("Hook is auto loaded!\n");
}

/**
 * 对外inline hook接口，负责管理inline hook信息
 * @param  pHookAddr     要hook的地址
 * @param  onCallBack    要插入的回调函数
 * @return               inlinehook是否设置成功（已经设置过，重复设置返回false）
 */
bool InlineHook(void *pHookAddr, void (*onCallBack)(struct user_pt_regs *))
{
    bool bRet = false;
    LOGI("InlineHook");

    if(pHookAddr == NULL || onCallBack == NULL)
    {
        return bRet;
    }
    //防止重复hook
    if(gs_vecInlineHookInfo.count(pHookAddr)==1)
    {
        return bRet;
    }


    INLINE_HOOK_INFO* pstInlineHook = new INLINE_HOOK_INFO();
    pstInlineHook->pHookAddr = pHookAddr;
    pstInlineHook->onCallBack = onCallBack;

    if(HookArm(pstInlineHook) == false)
    {
        LOGI("HookArm fail.");
        delete pstInlineHook;
        return bRet;
    }


    gs_vecInlineHookInfo[pHookAddr]=pstInlineHook;
    return true;
}


/**
 * 一次hook 废弃！
 * @param  pHookAddr     要hook的地址
 * @param  onCallBack    要插入的回调函数
 * @return               inlinehook是否设置成功（已经设置过，重复设置返回false）
 */
bool InlineHookOnce(void *pHookAddr, void (*onCallBack)(struct user_pt_regs *))
{
    bool bRet = false;
    LOGI("InlineHook");

    if(pHookAddr == NULL || onCallBack == NULL)
    {
        return bRet;
    }
    //TODO:检测该hook是否已经调用过，已使用则删除旧hook记录。未使用则防止重复hook
    if(gs_vecInlineHookInfo.count(pHookAddr)==1)
    {
        return bRet;
    }


    INLINE_HOOK_INFO* pstInlineHook = new INLINE_HOOK_INFO();
    pstInlineHook->pHookAddr = pHookAddr;
    pstInlineHook->onCallBack = onCallBack;

    if(HookArmOnce(pstInlineHook) == false)
    {
        LOGI("HookArm fail.");
        delete pstInlineHook;
        return bRet;
    }


    gs_vecInlineHookInfo[pHookAddr]=pstInlineHook;
    return true;
}


/**
 * 对外接口，用于取消inline hook  该接口禁止在回调中使用
 * @param  pHookAddr 要取消inline hook的位置
 * @return           是否取消成功（不存在返回取消失败）
 *
 */
bool UnInlineHook(void *pHookAddr)
{
    bool bRet = false;

    if(pHookAddr == NULL)
    {
        return bRet;
    }


    //防止重复删
    if(gs_vecInlineHookInfo.count(pHookAddr)==0)
    {
        return bRet;
    }

    INLINE_HOOK_INFO* pTargetInlineHookInfo =gs_vecInlineHookInfo.at(pHookAddr);



    gs_vecInlineHookInfo.erase(pHookAddr);
    deleteHookArm(pTargetInlineHookInfo);
    if(pTargetInlineHookInfo->pStubShellCodeAddr != NULL)
    {
        free(pTargetInlineHookInfo->pStubShellCodeAddr);
    }
    if(pTargetInlineHookInfo->ppOldFuncAddr)
    {
        free(pTargetInlineHookInfo->pNewEntryForOldFunction);
    }
    delete pTargetInlineHookInfo;
    bRet = true;

    return bRet;
}





/**
 * 用户自定义的stub函数，嵌入在hook点中，可直接操作寄存器等改变游戏逻辑操作
 * 这里将R0寄存器锁定为0x333，一个远大于30的值
 * @param regs 寄存器结构，保存寄存器当前hook点的寄存器信息
 */
 /*
void EvilHookStubFunctionForIBored(user_pt_regs *regs) //参数regs就是指向栈上的一个数据结构，由第二部分的mov r0, sp所传递。
{
    LOGI("In Evil Hook Stub.");
    char *p="Hello from Cpp";
    regs->regs[0]=(__u64)p;
}
*/
/**
 * 针对IBored应用，通过inline hook改变游戏逻辑的测试函数
 */
 /*
void ModifyIBored()
{
    LOGI("In IHook's ModifyIBored.");

    int target_offset = 0x130D4 ; //想Hook的目标在目标so中的偏移*

    void* pModuleBaseAddr = GetModuleBaseAddr(-1, "libhello.so"); //目标so的名称

    if(pModuleBaseAddr == 0)
    {
        LOGI("get module base error.");
        return;
    }

    uint64_t uiHookAddr = (uint64_t)pModuleBaseAddr + target_offset; //真实Hook的内存地址


    InlineHook((void*)(uiHookAddr), EvilHookStubFunctionForIBored); //第二个参数就是Hook想要插入的功能处理函数
}

*/



//-----------------------------------------------------------------------------------------------------
//我的接口


//供多次hook使用 返回hook的地址
void* DoInLineHook(std::string module, unsigned long off,void (*onCallBack)(struct user_pt_regs *))
{
    void* pModuleBaseAddr = GetModuleBaseAddr(-1, const_cast<char *>(module.c_str())); //目标so的名称
    if(pModuleBaseAddr == 0)
    {
        LOGI("get module base error.");
        return 0;
    }
    uint64_t uiHookAddr = (uint64_t)pModuleBaseAddr + off; //真实Hook的内存地址
    InlineHook((void*)(uiHookAddr), onCallBack);

    return (void*)uiHookAddr;
}
//直接使用VA hook
void* DoInLineHook(unsigned long off,void (*onCallBack)(struct user_pt_regs *))
{
    uint64_t uiHookAddr = off; //真实Hook的内存地址
    InlineHook((void*)(uiHookAddr), onCallBack);

    return (void*)uiHookAddr;
}

//一次hook
//已废弃，原因：返回时必须使用寄存器跳转，无法直接为pc赋值或使用地址跳转，必须占用一个寄存器，导致调回时无代码可复原寄存器
void* DoInLineHookOnce(std::string module, unsigned long off,void (*onCallBack)(struct user_pt_regs *))
{
    void* pModuleBaseAddr = GetModuleBaseAddr(-1, const_cast<char *>(module.c_str())); //目标so的名称
    if(pModuleBaseAddr == 0)
    {
        LOGI("get module base error.");
        return 0;
    }
    uint64_t uiHookAddr = (uint64_t)pModuleBaseAddr + off; //真实Hook的内存地址
    InlineHookOnce((void*)(uiHookAddr), onCallBack);

    return (void*)uiHookAddr;
}

void DeleteInLineHook(void *pHookAddr)
{
    UnInlineHook(pHookAddr);
}











