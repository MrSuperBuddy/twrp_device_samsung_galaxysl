$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)


$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)


# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)



PRODUCT_COPY_FILES += device/samsung/latona/prebuilt/zImage:kernel

# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := latona
PRODUCT_NAME := omni_latona
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9003
PRODUCT_MANUFACTURER := latona

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="samsung/GT-I9003/GT-I9003:2.3.6/GINGERBREAD/XXKPQ:user/release-keys
g/test-keys
" \
    PRIVATE_BUILD_DESC="GT-I9003-user 2.3.6 GINGERBREAD XXKPQ release-keys
"
