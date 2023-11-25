#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)
#$(call inherit-product, vendor/rising/config/rising.mk)
# Inherit from topaz device.
$(call inherit-product, device/xiaomi/topaz/device.mk)

# Flags rom
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
USE_PIXEL_CHARGING := true
TARGET_SUPPORTS_QUICK_TAP := true
#WITH_GMS := true
#TARGET_CORE_GMS := true
#TARGET_PREBUILT_PIXEL_LAUNCHER := true
#TARGET_ENABLE_PIXEL_FEATURES := true
#TARGET_USE_GOOGLE_TELEPHONY := true
#RISING_MAINTAINER :=scorpion
#RISING_CHIPSET := Snapdragon685
#RISING_STORAGE := 128GB
#RISING_RAM := 6GB
#RISING_BATTERY := 5000mAh

# Device identifier
PRODUCT_NAME := derp_topaz
PRODUCT_DEVICE := topaz
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 4G
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
