# Rules for MTK targets
include $(TOPDIR)vendor/arrow/build/core/mtk_target.mk

# Rules for QCOM targets
include $(TOPDIR)vendor/arrow/build/core/qcom_target.mk

# We modify several neverallows, so let the build proceed
SELINUX_IGNORE_NEVERALLOWS := true
