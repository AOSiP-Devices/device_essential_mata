# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/essential/mata/mata-vendor.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Device
$(call inherit-product, device/essential/mata/device.mk)

# TWRP
ifeq ($(WITH_TWRP),true)
$(call inherit-product, device/essential/mata/twrp/twrp.mk)
else
TARGET_RECOVERY_FSTAB := device/essential/mata/rootdir/etc/fstab.mata
endif

# Device identifiers
PRODUCT_DEVICE := mata
PRODUCT_NAME := lineage_mata
PRODUCT_BRAND := essential
PRODUCT_MODEL := PH-1
PRODUCT_MANUFACTURER := Essential Products
PRODUCT_RELEASE_NAME := mata

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=mata \
        PRIVATE_BUILD_DESC="mata-user 9 PQ1A.190105.112 550 release-keys"

BUILD_FINGERPRINT := essential/mata/mata:9/PQ1A.190105.112/550:user/release-keys

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Vlad Adumitroaie (celtare21)"