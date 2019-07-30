#
# This policy configuration will be used by all products that
# inherit from arrow
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    $(TOPDIR)/vendor/arrow/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    $(TOPDIR)/vendor/arrow/sepolicy/common/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    $(TOPDIR)/vendor/arrow/sepolicy/common/dynamic
else
BOARD_SEPOLICY_DIRS += \
    $(TOPDIR)/vendor/arrow/sepolicy/common/dynamic \
    $(TOPDIR)/vendor/arrow/sepolicy/common/vendor
endif

