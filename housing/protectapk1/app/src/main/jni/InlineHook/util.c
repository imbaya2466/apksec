//
// Created by imbaya on 2019/2/18.
//

#include "util.h"

#include <stdio.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <elf.h>
#include <android/log.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define TAG_NAME	"test2:fake_dlfcn"

#define log_info(fmt,args...) __android_log_print(ANDROID_LOG_INFO, TAG_NAME, (const char *) fmt, ##args)
#define log_err(fmt,args...) __android_log_print(ANDROID_LOG_ERROR, TAG_NAME, (const char *) fmt, ##args)

#ifdef LOG_DBG
#define log_dbg log_info
#else
#define log_dbg(...)
#endif

#ifdef __arm__
#define Elf_Ehdr Elf32_Ehdr
#define Elf_Shdr Elf32_Shdr
#define Elf_Sym  Elf32_Sym
#elif defined(__aarch64__)
#define Elf_Ehdr Elf64_Ehdr
#define Elf_Shdr Elf64_Shdr
#define Elf_Sym  Elf64_Sym
#else
#error "Arch unknown, please port me"
#endif

struct ctx {
    void *load_addr;  //可执行段的地址
    void *dynstr;       //动态字串表
    void *dynsym;       //动态符号表
    int nsyms;          //符号个数
    off_t bias;         //VA与文件中位置的差
};

//释放信息结构体对象
int fake_dlclose(void *handle)
{
    if(handle) {
        struct ctx *ctx = (struct ctx *) handle;
        if(ctx->dynsym) free(ctx->dynsym);	/* we're saving dynsym and dynstr */
        if(ctx->dynstr) free(ctx->dynstr);	/* from library file just in case */
        free(ctx);
    }
    return 0;
}

/* flags are ignored */
//自定义打开，返回的不是dlopen的handle，只能寻找已加载的
//返回的是信息结构体对象
void *fake_dlopen(const char *libpath, int flags)
{
    FILE *maps;
    char buff[256];
    struct ctx *ctx = 0;
    off_t load_addr, size;
    int k, fd = -1, found = 0;
    void *shoff;
    Elf_Ehdr *elf = MAP_FAILED;
//打印用宏
#define fatal(fmt,args...) do { log_err(fmt,##args); goto err_exit; } while(0)

    maps = fopen("/proc/self/maps", "r");
    if(!maps) fatal("failed to open maps");
//找到so的加载地址、执行段的
    while(!found && fgets(buff, sizeof(buff), maps))
        if(strstr(buff,"r-xp") && strstr(buff,libpath)) found = 1;

    fclose(maps);

    if(!found) fatal("%s not found in my userspace", libpath);
//获取地址
    if(sscanf(buff, "%lx", &load_addr) != 1)
        fatal("failed to read load address for %s", libpath);

    log_info("%s loaded in Android at 0x%08lx", libpath, load_addr);

    /* Now, mmap the same library once again */
//打开so文件
    fd = open(libpath, O_RDONLY);
    if(fd < 0) fatal("failed to open %s", libpath);
//获取文件大小
    size = lseek(fd, 0, SEEK_END);
    if(size <= 0) fatal("lseek() failed for %s", libpath);
//映射为elf结构
    elf = (Elf_Ehdr *) mmap(0, size, PROT_READ, MAP_SHARED, fd, 0);
    close(fd);
    fd = -1;

    if(elf == MAP_FAILED) fatal("mmap() failed for %s", libpath);

    //分配符号信息结构体
    ctx = (struct ctx *) calloc(1, sizeof(struct ctx));
    if(!ctx) fatal("no memory for %s", libpath);

    //赋予执行段的实际地址
    ctx->load_addr = (void *) load_addr;
    //获取节头表
    shoff = ((void *) elf) + elf->e_shoff;
    //遍历节头
    for(k = 0; k < elf->e_shnum; k++, shoff += elf->e_shentsize)  {


        Elf_Shdr *sh = (Elf_Shdr *) shoff;
        log_dbg("%s: k=%d shdr=%p type=%x", __func__, k, sh, sh->sh_type);

        switch(sh->sh_type) {
            //动态连接符号表
            case SHT_DYNSYM:
                if(ctx->dynsym) fatal("%s: duplicate DYNSYM sections", libpath); /* .dynsym */
                ctx->dynsym = malloc(sh->sh_size);
                if(!ctx->dynsym) fatal("%s: no memory for .dynsym", libpath);
                //拷贝动态符号表
                memcpy(ctx->dynsym, ((void *) elf) + sh->sh_offset, sh->sh_size);
                ctx->nsyms = (sh->sh_size/sizeof(Elf_Sym)) ;//确定符号表大小的
                break;
            //字符串表
            case SHT_STRTAB:
                //SHT_STRTAB只会记录第一个，dynstr保证是第一个
                if(ctx->dynstr) break;	/* .dynstr is guaranteed to be the first STRTAB */
                ctx->dynstr = malloc(sh->sh_size);
                if(!ctx->dynstr) fatal("%s: no memory for .dynstr", libpath);
                //拷贝动态字串表
                memcpy(ctx->dynstr, ((void *) elf) + sh->sh_offset, sh->sh_size);
                break;
            //程序数据。如.text、.data、.rodata节的类型都是
            case SHT_PROGBITS:
                //有一个没定义就继续循环
                if(!ctx->dynstr || !ctx->dynsym) break;
                /* won't even bother checking against the section name */
                //确定偏移
                ctx->bias = (off_t) sh->sh_addr - (off_t) sh->sh_offset;
                k = elf->e_shnum;  /* 用于退出循环 */
                break;
        }
    }
    //释放mmap的文件
    munmap(elf, size);
    elf = 0;

    if(!ctx->dynstr || !ctx->dynsym) fatal("dynamic sections not found in %s", libpath);

#undef fatal

    log_dbg("%s: ok, dynsym = %p, dynstr = %p", libpath, ctx->dynsym, ctx->dynstr);

    return ctx;

    err_exit:
    if(fd >= 0) close(fd);
    if(elf != MAP_FAILED) munmap(elf, size);
    fake_dlclose(ctx);
    return 0;
}

//handle是信息结构体对象，name要寻找的符号名
void *fake_dlsym(void *handle, const char *name)
{
    int k;
    struct ctx *ctx = (struct ctx *) handle;
    Elf_Sym *sym = (Elf_Sym *) ctx->dynsym;
    char *strings = (char *) ctx->dynstr;

    //遍历符号表
    for(k = 0; k < ctx->nsyms; k++, sym++)
        //判断名字
        if(strcmp(strings + sym->st_name, name) == 0) {
            /*  NB: sym->st_value is an offset into the section for relocatables,
            but a VMA for shared libs or exe files, so we have to subtract the bias */
            //可执行文件、共享库的value是VA，相对0的，因此减去bias为:VA-段加载VA+段文件偏移
            //得到该符号的文件偏移，加上首段的地址即可
            //这样是为了防止加载的基地址与第一个加载的可执行段起始位置不一样
            void *ret = ctx->load_addr + sym->st_value - ctx->bias;
            log_info("%s found at %p", name, ret);
            return ret;
        }
    return 0;
}

