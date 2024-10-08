#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from r0q device
$(call inherit-product, device/samsung/r0q/device.mk)

PRODUCT_DEVICE := r0q
PRODUCT_NAME := omni_r0q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S901N
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r0qksx-user 12 SP1A.210812.016 S901NKSU5EXH7 release-keys"

BUILD_FINGERPRINT := samsung/r0qksx/r0q:12/SP1A.210812.016/S901NKSU5EXH7:user/release-keys
