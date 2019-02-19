//
// Created by imbaya on 2019/2/18.
//

#ifndef PROTECTAPK1_UTIL_H
#define PROTECTAPK1_UTIL_H
#include <stdbool.h>
#include <stdlib.h>

void *fake_dlsym(void *handle, const char *name);
void *fake_dlopen(const char *libpath, int flags);
int fake_dlclose(void *handle);
bool ChangePageProperty(void *pAddress, size_t size);


#endif //PROTECTAPK1_UTIL_H
