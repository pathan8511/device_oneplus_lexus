#
# SPDX-FileCopyrightText: 2024-2026 Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_lexus,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lexus device
$(call inherit-product, device/oneplus/lexus/device.mk)

AOSPA_BUILDTYPE ?= UNOFFICIAL

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_NAME := aospa_lexus
PRODUCT_DEVICE := lexus
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2707

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES +=     BuildDesc="qssi_64-user 16 BP2A.250605.015 1791983599388 release-keys"     BuildFingerprint=OnePlus/CPH2707IN/OP6131L1:16/UKQ1.231108.001/V.R4T2.4eeb864-287dc4a-287dc4b:user/release-keys     DeviceName=OP6131L1     DeviceProduct=CPH2707     SystemDevice=OP5E93L1     SystemName=CPH2707

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Maintainer Configuration
PRODUCT_PRODUCT_PROPERTIES += ro.aospa.maintainer=Pathan
PRODUCT_PRODUCT_PROPERTIES += ro.penguin.maintainer=Pathan

endif
