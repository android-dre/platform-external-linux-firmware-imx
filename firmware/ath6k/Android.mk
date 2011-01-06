
ifeq ($(BOARD_SOC_CLASS), IMX5X)
ifeq ($(BOARD_HAVE_WIFI), true)

LOCAL_PATH := $(call my-dir)
AR_FW_PATH := AR6102
INSTALL_PATH := $(TARGET_OUT)/lib/firmware/ath6k/$(AR_FW_PATH)

include $(CLEAR_VARS)
LOCAL_MODULE := athwlan.bin.z77
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(INSTALL_PATH)
LOCAL_MODULE_TAGS := eng
LOCAL_SRC_FILES := $(AR_FW_PATH)/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := data.patch.hw2_0.bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(INSTALL_PATH)
LOCAL_MODULE_TAGS := eng
LOCAL_SRC_FILES := $(AR_FW_PATH)/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := eeprom.data
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(INSTALL_PATH)
LOCAL_MODULE_TAGS := eng
LOCAL_SRC_FILES := $(AR_FW_PATH)/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := eeprom.bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(INSTALL_PATH)
LOCAL_MODULE_TAGS := eng
LOCAL_SRC_FILES := $(AR_FW_PATH)/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := calData_ar6102_15dBm.bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(INSTALL_PATH)
LOCAL_MODULE_TAGS := eng
LOCAL_SRC_FILES := $(AR_FW_PATH)/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

endif
endif
