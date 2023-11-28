# Release name
PRODUCT_RELEASE_NAME := pipa

# 引用默认的编译配置文件，core_64_bit必须先于其他引用，否则不生效
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Enable virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from pipa device
$(call inherit-product, device/xiaomi/pipa/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := pipa
PRODUCT_NAME := pipa_pipa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 23043RP34G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pipa_global-user 13 RKQ1.211001.001 V14.0.8.0.TMZMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/pipa_global/pipa:13/RKQ1.211001.001/V14.0.8.0.TMZMIXM:user/release-keys
