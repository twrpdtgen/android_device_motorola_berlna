#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from berlna device
$(call inherit-product, device/motorola/berlna/device.mk)

PRODUCT_DEVICE := berlna
PRODUCT_NAME := omni_berlna
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge (2021)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="berlna_global-user 11 S1RMS32.68-43-16-9 1f6747 release-keys"

BUILD_FINGERPRINT := motorola/berlna_global/berlna:11/S1RMS32.68-43-16-9/1f6747:user/release-keys
