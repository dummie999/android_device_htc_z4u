USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/z4u/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true


TARGET_BOOTLOADER_BOARD_NAME := z4u

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x03b00000
BOARD_KERNEL_PAGESIZE := 2048

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DHTCLOG

BOARD_USES_QCOM_HARDWARE := true

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16776192
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2013264896
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1342177280

BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_NO_HW_VSYNC := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 36

#no idea what these things do, but it fixed a warning with twrp :p
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"

# OpenGL drivers config file path
BOARD_EGL_CFG := device/htc/z4u/config/egl.cfg

# Graphics
BOARD_USE_SKIA_LCDTEXT := true
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_QCOM_DISPLAY_VARIANT := legacy #atm I am trying with legacy from androidarmv6
TARGET_QCOM_HDMI_OUT := false
TARGET_HAVE_HDMI_OUT := false
TARGET_NO_HW_OVERLAY := true
TARGET_USES_GENLOCK := true
TARGET_USES_OVERLAY := true
#BOARD_EGL_NEEDS_LEGACY_FB := true
#TARGET_QCOM_BSP := true

TARGET_USES_ION := true

TARGET_SPECIFIC_HEADER_PATH := device/htc/z4u/include

#twrp
DEVICE_RESOLUTION := 480x800
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true

#custom recovery init.rc
TARGET_RECOVERY_INITRC := device/htc/z4u/recovery/init.rc
