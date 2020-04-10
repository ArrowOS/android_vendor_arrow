# Rules for QCOM targets
include $(TOPDIR)vendor/arrow/build/core/qcom_target.mk

# BIG HAX MOMENT
# We modify several neverallows, so let the build proceed
# Even for user build type devices with neverallows
ifeq ($(TARGET_ALLOW_NEVERALLOWS), true)
    ifeq ($(TARGET_BUILD_VARIANT),user)
        SELINUX_IGNORE_NEVERALLOWS_ON_USER := true
    else
        SELINUX_IGNORE_NEVERALLOWS := true
    endif
endif
