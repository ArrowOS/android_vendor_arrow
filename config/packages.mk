# Copyright (C) 2018-2019 ArrowOS
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


# Required packages
PRODUCT_PACKAGES += \
    ArrowThemesStub \
    BluetoothExt \
    SimpleCalendar \
    DuckDuckGo \
    ExactCalculator \
    LatinIME \
    Launcher3QuickStep \
    messaging \
    OmniJaws \
    WeatherIcons \
    Phonograph \
    Recorder \
    stats \
    Stk \
    ThemePicker

ifeq ($(TARGET_EXCLUDE_LAWNCHAIR),)
PRODUCT_PACKAGES += \
    Lawnchair \
    LawnConf
endif

# Accents
PRODUCT_PACKAGES += \
    AccentColorYellowOverlay \
    AccentColorVioletOverlay \
    AccentColorTealOverlay \
    AccentColorRedOverlay \
    AccentColorQGreenOverlay \
    AccentColorPinkOverlay \
    AccentColorPixelBlueOverlay \
    AccentColorLightPurpleOverlay \
    AccentColorIndigoOverlay \
    AccentColorFlatPinkOverlay \
    AccentColorCyanOverlay \
    AccentColorBlueGrayOverlay

# Custom Overlays
# Settings
PRODUCT_PACKAGES += \
    SystemPitchBlackOverlay \
    SystemUIPitchBlackOverlay \
    SystemDarkGrayOverlay \
    SystemUIDarkGrayOverlay \
    SystemStyleOverlay \
    SystemUIStyleOverlay \
    SystemNightOverlay \
    SystemUINightOverlay \
    SystemSolarizedDarkOverlay \
    SystemUISolarizedDarkOverlay

# NavigationBar Gestural Mode No Pill Overlays
PRODUCT_PACKAGES += \
    NavBarGesturalNoPillOverlay \
    NavBarGesturalNarrowBackNoPillOverlay \
    NavBarGesturalWideBackNoPillOverlay \
    NavBarGesturalExtraWideBackNoPillOverlay

# Extra tools
PRODUCT_PACKAGES += \
    7z \
    awk \
    bash \
    bzip2 \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    powertop \
    setcap \
    unrar \
    unzip \
    vim \
    wget \
    zip

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Cutout control overlays
PRODUCT_PACKAGES += \
    HideCutout \
    StatusBarStock

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    fsck.ntfs \
    mke2fs \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# These packages are excluded from user builds
PRODUCT_PACKAGES_DEBUG += \
    procmem

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# World APN list
PRODUCT_PACKAGES += \
<<<<<<< HEAD
    apns-conf.xml
=======
    Lean

# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# Accent and Base packages
PRODUCT_PACKAGES += \
    AmberTheme \
    BlueTheme \
    CyanTheme \
    DeepOrangeTheme \
    DeepPurpleTheme \
    GreenTheme \
    IndigoTheme \
    LightBlueTheme \
    LightGreenTheme \
    LimeTheme \
    OrangeTheme \
    PinkTheme \
    PixelBaseTheme \
    PixelTheme \
    PurpleTheme \
    RedTheme \
    StockBaseTheme \
    StockFixedBaseTheme \
    StockTheme \
    YellowTheme

# Dark/BlackUI Packages
PRODUCT_PACKAGES += \
    GBoardDarkTheme \
    SettingsDarkTheme \
    SystemDarkTheme \
    SysuiQsDarkTheme
#    SettingsBlackTheme \
#    SystemBlackTheme \
#    SystemSettingsIconTint \
#    SysuiQsBlackTheme

# Lawnchair Default Configuration
PRODUCT_PACKAGES += \
    LawnConf

PRODUCT_COPY_FILES += \
   vendor/potato/prebuilt/common/fonts/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Regular.ttf \
   vendor/potato/prebuilt/common/fonts/GoogleSans-Medium.ttf:system/fonts/GoogleSans-Medium.ttf \
   vendor/potato/prebuilt/common/fonts/GoogleSans-MediumItalic.ttf:system/fonts/GoogleSans-MediumItalic.ttf \
   vendor/potato/prebuilt/common/fonts/GoogleSans-Italic.ttf:system/fonts/GoogleSans-Italic.ttf \
   vendor/potato/prebuilt/common/fonts/GoogleSans-Bold.ttf:system/fonts/GoogleSans-Bold.ttf \
   vendor/potato/prebuilt/common/fonts/GoogleSans-BoldItalic.ttf:system/fonts/GoogleSans-BoldItalic.ttf

ADDITIONAL_FONTS_FILE := vendor/potato/prebuilt/common/fonts/google-sans.xml

# Turbo
PRODUCT_PACKAGES += \
    Turbo \
    vendor/potato/prebuilt/common/etc/permissions/privapp-permissions-turbo.xml:system/etc/permissions/privapp-permissions-turbo.xml \
    vendor/potato/prebuilt/common/etc/sysconfig/turbo.xml:system/etc/sysconfig/turbo.xml
>>>>>>> 7a7d886f... potato: Introduce overlay for Lawnchair default conf
