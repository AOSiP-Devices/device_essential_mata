$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit from mata device
$(call inherit-product, device/essential/mata/device.mk)

PRODUCT_DEVICE := mata
PRODUCT_NAME := aosip_mata
PRODUCT_BRAND := essential
PRODUCT_MODEL := PH-1
PRODUCT_MANUFACTURER := Essential Products
PRODUCT_RELEASE_NAME := mata

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=mata \
        BUILD_FINGERPRINT=essential/mata/mata:8.0.0/OPM1.170911.213/214:user/release-keys \
        PRIVATE_BUILD_DESC="mata-user 8.0.0 OPM1.170911.213 214 release-keys"
