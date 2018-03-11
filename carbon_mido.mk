#
# Copyright 2018 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, device/xiaomi/mido/full_mido.mk)

# Inherit some common AOSP stuff.
TARGET_ARCH := arm64
TARGET_DENSITY := xxhdpi
TARGET_BOOT_ANIMATION_RES := 1080
#TARGET_INCLUDE_ARCORE := true
#$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)


## Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_mido
BOARD_VENDOR := Xiaomi
PRODUCT_DEVICE := mido

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="xiaomi/mido/mido:7.0/NRD90M/V9.2.2.0.NCFMIEK:user/release-keys" \
    PRIVATE_BUILD_DESC="mido-user 7.0 NRD90M V9.2.2.0.NCFMIEK release-keys"
