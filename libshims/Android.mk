LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := liblog libcutils libgui libbinder libutils libui

LOCAL_SRC_FILES := \
    camera_shim.c

LOCAL_MODULE := libcamera_shim
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_32_BIT_ONLY := true

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    Parcel.cpp

LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE := libshim_parcel
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

# libmdmcutback

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    xiaomi_mdmcutback.c

LOCAL_MODULE := libshim_mdmcutback
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
