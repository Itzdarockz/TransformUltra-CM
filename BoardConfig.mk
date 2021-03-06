

# inherit from the proprietary version
#inherit for msmcommon
-include device/htc/msm7x30-common/BoardConfigCommon.mk
#-include vendor/samsung/transformultra/BoardConfigVendor.mk
#from samsung source

#from samsung...

#TARGET_NO_BOOTLOADER := true
#TARGET_NO_KERNEL := true
HAVE_HTC_AUDIO_DRIVER := false
BOARD_CAMERA_USE_GETBUFFERINFO:=true
#ANDROID_JPEG_NO_ASSEMBLER := true 
#BOARD_USE_FROYO_LIBCAMERA := false
TARGET_CPU_ABI := armeabi
#audiostuff
BUILD_TINY_ANDROID := false
QC_PROP := true

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOOTLOADER_BOARD_NAME := transformultra
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_USES_QCOM_VOIPMUTE := false
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=SPH-M930BST
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 309329920
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1055916032
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_PREBUILT_KERNEL := device/samsung/transformultra/files/kernel
TARGET_RECOVERY_INITRC := device/samsung/transformultra/files/recovery.rc
BOARD_CUSTOM_GRAPHICS :=  ../../../device/samsung/transformultra/files/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/transformultra/files/recovery/recovery_ui.c
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true


## PARTITION LAYOUT/INFO ##
BOARD_DATA_DEVICE := /dev/block/mmcblk0p17
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw,nosuid,nodev,relatime,barrier=1,data=ordered,noauto_da_alloc 0 0
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p15
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw,relatime,barrier=1,data=ordered 0 0
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p16
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTION :=rw,nosuid,nodev,relatime,barrier=1,data=ordered 0 0
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_BOOT_DEVICE := /dev/block/mmcblk0p8
BOARD_RECOVERY_DEVICE := /dev/block/mmcblk0p13
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1

USE_CAMERA_STUB := true
#AUDIOZ

# custom lun0 file for USB Mass Storage
#BOARD_UMS_LUNFILE := /sys/devices/platform/s3c-usbgadget/gadget/lun0/file
BOARD_RECOVERY_HANDLES_MOUNT := true
# JIT / Optimizations
WITH_DEXPREOPT := true
JS_ENGINE := v8



TARGET_SPECIFIC_HEADER_PATH += device/samsung/transformultra/files
BOARD_USE_QCOM_SPEECH := true
# FM Radio (needed for the audio driver to compile)
#BOARD_USE_QCOM_SPEECH:=true
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE := bcm4325
#BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
BOARD_HAVE_FM_RADIO := true
TARGET_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
TARGET_GLOBAL_CPPFLAGS += -DHAVE_FM_RADIO
BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
