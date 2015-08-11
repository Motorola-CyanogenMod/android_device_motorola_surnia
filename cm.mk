# Copyright (C) 2014 The CyanogenMod Project

# Resolution
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Phone Config
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Phone Config continued
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from device.mk
$(call inherit-product, device/motorola/surnia/device.mk)

# Vendor Files
$(call inherit-product-if-exists, vendor/motorola/surnia/surnia-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_surnia
PRODUCT_DEVICE := surnia
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT1526
PRODUCT_MANUFACTURER := motorola

# OverRide
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

