$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)


$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)


# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)



PRODUCT_COPY_FILES +=
	device/samsung/galaxysl/prebuilt/zImage:kernel

# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_NAME := omni_galaxysl
PRODUCT_DEVICE := galaxysl
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9003

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="samsung/GT-I9003/GT-I9003:2.3.6/GINGERBREAD/XXKPQ:user/release-keys
" \
    PRIVATE_BUILD_DESC="GT-I9003-user 2.3.6 GINGERBREAD XXKPQ release-keys
"
