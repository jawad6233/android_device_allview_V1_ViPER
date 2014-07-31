# Copyright (C) 2010 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from the proprietary version

# Default value, if not overridden else where.
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/faea/HY509_V2_0/bluetooth

TARGET_SPECIFIC_HEADER_PATH := device/allview/V1_ViPER/include

TARGET_BOARD_PLATFORM := mt6589

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7

COMMON_GLOBAL_CFLAGS += -DMTK_G_MT6589
COMMON_GLOBAL_CPPFLAGS += -DMTK_G_MT6589

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SYSTEMIMAGE_PARTITION_SIZE:= 734003200
BOARD_USERDATAIMAGE_PARTITION_SIZE:= 1073741824
BOARD_FLASH_BLOCK_SIZE := 512

# Wifi related defines
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mtk

# telephony
BOARD_RIL_CLASS := ../../../device/allview/V1_ViPER/ril/

TARGET_BOOTLOADER_BOARD_NAME := mt6589

USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_CFG := device/allview/V1_ViPER/egl.cfg

BOARD_NEEDS_OLD_HWC_API := true

# Avoid the generation of ldrcc instructions
# NEED_WORKAROUND_CORTEX_A9_745320 := true
