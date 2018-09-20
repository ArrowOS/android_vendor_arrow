include vendor/arrow/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/arrow/config/BoardConfigQcom.mk
endif
