LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_RRO_THEME := ArrowNavigationBarNoHint
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := platform
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_PACKAGE_NAME := ArrowNavigationBarNoHint

LOCAL_PRIVATE_PLATFORM_APIS := true

include $(BUILD_RRO_PACKAGE)
