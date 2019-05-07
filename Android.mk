LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

ifeq (1,$(strip $(shell expr $(PLATFORM_VERSION) \>= 5.0)))
LOCAL_CFLAGS += -DMMAP64
endif

LOCAL_SYSTEM_SHARED_LIBRARIES := libc
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_SRC_FILES := io.c
LOCAL_MODULE := io

include $(BUILD_EXECUTABLE)
