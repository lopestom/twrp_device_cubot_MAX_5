#
# Copyright (C) 2025 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/cubot/MAX_5

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit_only.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Enable userspace reboot
$(call inherit-product, $(SRC_TARGET_DIR)/product/userspace_reboot.mk)

# Configure twrp config common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Configure compression
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)

# Device specific configs
$(call inherit-product, device/cubot/MAX_5/device.mk)

# Configure virtual_ab_ota.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Device identifier
PRODUCT_DEVICE := MAX_5
PRODUCT_NAME := twrp_MAX_5
PRODUCT_BRAND := CUBOT
PRODUCT_MODEL := MAX 5
PRODUCT_MANUFACTURER := CUBOT
PRODUCT_RELEASE_NAME := MAX_5

# Hide Reflash TWRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.vendor_boot=true

PRODUCT_GMS_CLIENTID_BASE := android-cubot

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=MAX_5 \
    PRODUCT_NAME=MAX_5_EEA \
    PRIVATE_BUILD_DESC="hal_mgvi_64_armv82-user 12 UP1A.231005.007 2024094 release-keys"

BUILD_FINGERPRINT := "CUBOT/MAX_5_EEA/MAX_5:14/UP1A.231005.007/2024094:user/release-keys"


# ro.vendor.build.version.release=12
# ro.vendor.build.version.release_or_codename=12
# ro.vendor.build.version.sdk=31
# ro.product.first_api_level=31
# ro.board.first_api_level=31
