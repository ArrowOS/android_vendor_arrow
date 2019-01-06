# Copyright (C) 2018 ArrowOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include vendor/arrow/config/version.mk

PRODUCT_COPY_FILES += \
    vendor/arrow/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/arrow/prebuilt/common/bin/sysinit:system/bin/sysinit  \

DEVICE_PACKAGE_OVERLAYS += \
    vendor/arrow/overlay/common \
    vendor/arrow/overlay/themes

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# init file
PRODUCT_COPY_FILES += \
    vendor/arrow/prebuilt/common/etc/init.local.rc:system/etc/init/init.arrow.rc

# Backup Tool
ifeq ($(AB_OTA_UPDATER),true)
PRODUCT_COPY_FILES += \
    vendor/arrow/build/tools/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/arrow/build/tools/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/arrow/build/tools/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
endif

PRODUCT_COPY_FILES += \
    vendor/arrow/build/tools/backuptool.sh:install/bin/backuptool.sh \
    vendor/arrow/build/tools/backuptool.functions:install/bin/backuptool.functions \
    vendor/arrow/build/tools/50-cm.sh:system/addon.d/50-cm.sh

# World APN list
PRODUCT_COPY_FILES += \
    vendor/arrow/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/arrow/prebuilt/common/etc/sensitive_pn.xml:system/etc/sensitive_pn.xml

# Pixel sysconfig
PRODUCT_COPY_FILES += \
    vendor/arrow/prebuilt/common/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml

# Power whitelist
PRODUCT_COPY_FILES += \
    vendor/arrow/prebuilt/common/etc/sysconfig/custom-power-whitelist.xml:system/etc/sysconfig/custom-power-whitelist.xml

# Do not include art debug targets
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Bootanimation
include vendor/arrow/config/bootanimation.mk

# Packages
include vendor/arrow/config/packages.mk

# Props
include vendor/arrow/config/props.mk

# Sounds
include vendor/arrow/config/sounds.mk
