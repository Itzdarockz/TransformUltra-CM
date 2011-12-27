$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/transformultra/transformultra-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/transformultra/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/transformultra/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
PRODUCT_COPY_FILES += \
    device/samsung/transformultra/init.rc:root/init.rc

PRODUCT_COPY_FILES += \
    device/samsung/transformultra/lib/modules/bthid.ko:root/lib/modules/bthid.ko \
    device/samsung/transformultra/lib/modules/dhd.ko:root/lib/modules/dhd.ko \
    device/samsung/transformultra/lib/modules/qce.ko:root/lib/modules/qce.ko \
    device/samsung/transformultra/lib/modules/qcedev.ko:root/lib/modules/qcedev.ko \
    device/samsung/transformultra/lib/modules/qcrypto.ko.ko:root/lib/modules/qcrypto.ko.ko \

    device/samsung/transformultra/recovery.fstab:recovery/root/etc/recovery.fstab

PRODUCT_COPY_FILES +=
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_transformultra
PRODUCT_DEVICE := transformultra