# Charger
ifeq ($(WITH_LINEAGE_CHARGER),true)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.lineage
endif

include vendor/arrow/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/arrow/config/BoardConfigQcom.mk
endif

include vendor/arrow/config/BoardConfigSoong.mk
