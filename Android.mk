ifneq ($(filter latona,$(TARGET_DEVICE)),)

LOCAL_PATH := device/samsung/latona

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
