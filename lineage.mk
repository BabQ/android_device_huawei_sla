#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tenshi device
$(call inherit-product, device/huawei/sla/device.mk)

# Inherit from common device
$(call inherit-product, device/huawei/msm8937-common/msm8937.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := huawei
PRODUCT_DEVICE := sla
PRODUCT_NAME := lineage_sla
PRODUCT_BRAND := huawei
PRODUCT_MODEL := SLA-AL00
PRODUCT_MANUFACTURER := huawei

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=sla

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Huawei/generic_a53_32/generic_a53_32:7.0/NRD90M/jslave08182157:user/test-keys \
    PRIVATE_BUILD_DESC="generic_a53_32-user 7.0 NRD90M eng.jslave.20170818.215715 test-keys"
