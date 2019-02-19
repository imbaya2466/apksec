LOCAL_PATH := $(call my-dir)  


include $(CLEAR_VARS)   #第一步：引入第三方so库
LOCAL_MODULE :=xhook     #第二步：第三方库的名称
LOCAL_SRC_FILES := libxhook.so  #第三步：第三方so库的绝对路径（当前为android.mk所在目录）
include $(PREBUILT_SHARED_LIBRARY)  #第四步：引入的形式 生成动态库



include $(CLEAR_VARS)
LOCAL_CXXFLAGS +=  -g -O0
LOCAL_ARM_MODE := arm
LOCAL_MODULE    := jiagu
LOCAL_STATIC_LIBRARIES:= IHook
LOCAL_SHARED_LIBRARIES:= xhook
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../InlineHook
LOCAL_SRC_FILES := InlineHook.cpp EasyToUse.cpp ApplicationNative.cpp RefInvoke.cpp
LOCAL_LDLIBS += -L$(SYSROOT)/usr/lib -llog

include $(BUILD_SHARED_LIBRARY)