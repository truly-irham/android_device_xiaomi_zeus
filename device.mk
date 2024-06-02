#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/dagda/dagda-vendor.mk)

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResZeus \
    SettingsProviderResZeus \
    SettingsResZeus \
    SystemUIResZeus \
    WifiResZeus

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-derp

# Sensors
PRODUCT_PACKAGES += \
    sensors.xiaomi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
