#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Force Ninja to build an image
PRODUCT_SHIPPING_API_LEVEL := 34
override PRODUCT_SHIPPING_API_LEVEL := 34

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Asteroids device
$(call inherit-product, device/nothing/asteroids/device.mk)

PRODUCT_DEVICE := asteroids
PRODUCT_NAME := twrp_asteroids
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A059
PRODUCT_MANUFACTURER := nothing

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Asteroids-user 14 UKQ1.241011.001 2507171803 release-keys"

BUILD_FINGERPRINT := Nothing/Asteroids/Asteroids:14/UKQ1.241011.001/2507171803:user/release-keys

PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.configstore@1.1-service

PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe \
    android.hardware.health@2.1-service \
    android.hardware.boot@1.1-service.nothing

# Required for Dynamic Partitions
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-service \
    android.hardware.boot@1.2-impl-qti \
    liblp \
    libxml2

PRODUCT_SOONG_NAMESPACES += vendor/qcom/opensource/commonsys-intf/display

PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.keymaster@4.0-service \
    android.hardware.keymaster@4.0-impl

PRODUCT_PACKAGES += \
    android.hardware.security.keymint-service \
    android.hardware.security.sharedsecret-service \
    android.hardware.health@2.1-service \
    android.hardware.health@2.1-impl

PRODUCT_PACKAGES += \
    libresetprop \
    resetprop
