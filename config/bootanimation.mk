# Boot Animation

# 1080p
ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
PRODUCT_COPY_FILES += vendor/arrow/prebuilt/common/bootanimation/1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
# 720p
else ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
PRODUCT_COPY_FILES += vendor/arrow/prebuilt/common/bootanimation/720.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
# 480p
else ifeq ($(TARGET_BOOT_ANIMATION_RES),480)
PRODUCT_COPY_FILES += vendor/arrow/prebuilt/common/bootanimation/480.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
# Default to 720p if the device does not set the flag.
else
PRODUCT_COPY_FILES += vendor/arrow/prebuilt/common/bootanimation/720.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
