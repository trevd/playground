LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= jediwave.c
LOCAL_MODULE:= jediwave

LOCAL_STATIC_LIBRARIES := libc liblog libcutils
LOCL_FORCE_STATIC_EXECUTABLE := true

LOCAL_MODULE_PATH := $(LOCAL_PATH)
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
