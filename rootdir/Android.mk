LOCAL_PATH := $(call my-dir)

# YTX703L specific configuration scripts

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.class_main.sh
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.class_main.sh
include $(BUILD_PREBUILT)

