LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := mtk_plpath_utils_taiko_recovery
LOCAL_MODULE_STEM := mtk_plpath_utils
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := mtk_plpath_utils
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin
LOCAL_CHECK_ELF_FILES := false
LOCAL_FORCE_STATIC_EXECUTABLE := false
include $(BUILD_PREBUILT)
