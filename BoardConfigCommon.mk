#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

DEVICE_COMMON_PATH := device/lge/g5-common

# inherit from common msm8996
-include device/lge/msm8996-common/BoardConfigCommon.mk

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_COMMON_PATH)/manifest.xml

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_CACHEIMAGE_PARTITION_SIZE := 1291845632
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4831838208
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25241321472

# SELinux policies
BOARD_SEPOLICY_DIRS += $(DEVICE_COMMON_PATH)/sepolicy

# Treble
PRODUCT_SHIPPING_API_LEVEL := 23

# inherit from the proprietary version
-include vendor/lge/g5-common/BoardConfigVendor.mk
