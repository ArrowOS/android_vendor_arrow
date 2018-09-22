BUILD_RRO_SYSTEM_PACKAGE := $(TOPDIR)vendor/arrow/build/core/system_rro.mk

# Rules for QCOM targets
include $(TOPDIR)vendor/arrow/build/core/qcom_target.mk

# We modify several neverallows, so let the build proceed
SELINUX_IGNORE_NEVERALLOWS := true

