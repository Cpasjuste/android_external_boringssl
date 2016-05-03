LOCAL_ADDITIONAL_DEPENDENCIES += $(LOCAL_PATH)/sources.mk
include $(LOCAL_PATH)/sources.mk

LOCAL_CFLAGS += -I$(LOCAL_PATH)/src/include -I$(LOCAL_PATH)/src/crypto -Wno-unused-parameter -std=gnu11

LOCAL_SRC_FILES += $(crypto_sources)

ifeq ($(TARGET_ARCH),arm)
LOCAL_SRC_FILES += $(linux_arm_sources)
endif
ifeq ($(TARGET_ARCH),arm64)
LOCAL_SRC_FILES += $(linux_aarch64_sources)
endif
ifeq ($(TARGET_ARCH),x86)
LOCAL_SRC_FILES += $(linux_x86_sources)
endif
ifeq ($(TARGET_ARCH),x86_64)
LOCAL_SRC_FILES += $(linux_x86_64_sources)
endif

