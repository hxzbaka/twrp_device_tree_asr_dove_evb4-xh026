#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from dove_evb4 device
$(call inherit-product, device/asr/dove_evb4/device.mk)

PRODUCT_DEVICE := dove_evb4
PRODUCT_NAME := twrp_dove_evb4
PRODUCT_BRAND := ASR
PRODUCT_MODEL := ASR8601
PRODUCT_MANUFACTURER := asr

PRODUCT_GMS_CLIENTID_BASE := android-asr

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dove_evb4-user 13 TSSD.15.01.241231 1744470529 release-keys"

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true

BUILD_FINGERPRINT := ASR/dove_evb4/dove_evb4:13/TSSD.15.01.241231/1744470529:user/release-keys
