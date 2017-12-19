DEVICE_TREE := device/lenovo/tb_x304l

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8937

# Platform
QCOM_BOARD_PLATFORMS := msm8917
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno308
TARGET_BOARD_SUFFIX := _64
TARGET_IS_64_BIT := true
TARGET_USES_64_BIT_BINDER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Enable CPUSets
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

#Kernel
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000 g_android.luns=1 g_android.removable=1
BOARD_MKBOOTIMG_ARGS := --base 0x80000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_PREBUILT_KERNEL := $(DEVICE_TREE)/prebuilt/zImage-dtb

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

#Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 9652640768
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Native suppor NTFS & EXFAT File systems
TARGET_USES_EXFAT := true
KERNEL_EXFAT_MODULE_NAME := "exfat"
TARGET_USES_NTFS := true
KERNEL_NTFS_MODULE_NAME := "ntfs"

BOARD_ROOT_EXTRA_FOLDERS := dsp firmware fsg lenovocust oem persist

#Custom lun for usb storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(DEVICE_TREE)/sepolicy

# Recovery  flags
BOARD_HAS_REMOVABLE_STORAGE := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

#TWRP flags
TARGET_RECOVERY_INITRC := $(DEVICE_TREE)/recovery/root/init.rc
TARGET_RECOVERY_FSTAB := $(DEVICE_TREE)/recovery/root/etc/recovery.fstab
TW_THEME := portrait_hdpi
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "/data"
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_REBOOT_BOOTLOADER := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 79
TW_DEFAULT_LANGUAGE := ru
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_FB2PNG := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_FLASH_FROM_STORAGE := true
TW_NO_EXFAT_FUSE := true
TW_NO_SCREEN_BLANK := true

#Crypto
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd
