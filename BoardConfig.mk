#
# Copyright (C) 2013 The Android Open-Source Project
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

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

# Binder API version
TARGET_USES_64_BIT_BINDER := true

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --second_offset 0x00f00000
BOARD_KERNEL_IMAGE_NAME := zImage-dtb

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

BOARD_USES_ALSA_AUDIO := true
USE_XML_AUDIO_POLICY_CONF := 1

BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true
#BOARD_CUSTOM_BT_CONFIG := device/lge/hammerhead/bluetooth/vnd_hammerhead.txt
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/hammerhead/bluetooth

# Encryption
TARGET_KEYMASTER_SKIP_WAITING_FOR_QSEE := true

# Wifi related defines
# WPA_SUPPLICANT_VERSION      := VER_0_8_X
# BOARD_WLAN_DEVICE           := bcmdhd
# BOARD_WPA_SUPPLICANT_DRIVER := NL80211
# BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
# BOARD_HOSTAPD_DRIVER        := NL80211
# BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
# WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
# WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"
# WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"

#BOARD_USES_SECURE_SERVICES := true

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOOTLOADER_BOARD_NAME := asus_a86
#TARGET_BOARD_INFO_FILE := device/lge/hammerhead/board-info.txt
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true
TARGET_NO_RPC := true

#screen
TARGET_SCREEN_WIDTH = 1080
TARGET_SCREEN_HEIGHT = 1920

VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
TARGET_USES_ION := true
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000U

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
DONT_DEXPREOPT_PREBUILTS := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11781783040
BOARD_CACHEIMAGE_PARTITION_SIZE := 872415232
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Define kernel config for inline building
TARGET_KERNEL_CONFIG := a86-devel_defconfig
TARGET_KERNEL_SOURCE := kernel/asus/asus_a86

BOARD_CHARGER_ENABLE_SUSPEND := true

TARGET_RECOVERY_FSTAB = device/asus/asus_a86/fstab.qcom

TARGET_RELEASETOOLS_EXTENSIONS := device/asus/asus_a86

#BOARD_HAL_STATIC_LIBRARIES := libdumpstate.hammerhead

BOARD_SEPOLICY_DIRS += device/asus/asus_a86/sepolicy
BOARD_SEPOLICY_M4DEFS += vensys=\(vendor\|system/vendor\)

#DEVICE_MANIFEST_FILE := device/lge/hammerhead/manifest.xml
#DEVICE_MATRIX_FILE := device/lge/hammerhead/compatibility_matrix.xml

#OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_HAS_HH_VSYNC_ISSUE := true

TARGET_TOUCHBOOST_FREQUENCY:= 1200

USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true
USE_DEVICE_SPECIFIC_CAMERA:= true
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /system/bin/cameraserver=22

TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS:= true

-include vendor/lge/hammerhead/BoardConfigVendor.mk
