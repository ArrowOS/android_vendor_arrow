# Copyright (C) 2016 The Pure Nexus Project
# Copyright (C) 2016 The JDCTeam
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

ARROW_MOD_VERSION = v8.1

ifndef ARROW_BUILD_TYPE
    ARROW_BUILD_TYPE := UNOFFICIAL
endif

ifeq ($(ARROW_BETA),true)
    ARROW_BUILD_TYPE := BETA
endif

CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)

ifdef ARROW_OFFICIAL
   LIST = $(shell curl -s https://raw.githubusercontent.com/ArrowOS/android_vendor_arrow/arrow-8.x/arrow.devices)
   FOUND_DEVICE =  $(filter $(CURRENT_DEVICE), $(LIST))
    ifeq ($(FOUND_DEVICE),$(CURRENT_DEVICE))
      IS_OFFICIAL=true
      ARROW_BUILD_TYPE := OFFICIAL
    endif
    ifneq ($(IS_OFFICIAL), true)
       ARROW_BUILD_TYPE := UNOFFICIAL
       $(error Device is not official "$(FOUND)")
    endif
endif

ARROW_VERSION := Arrow-$(ARROW_MOD_VERSION)-$(CURRENT_DEVICE)-$(ARROW_BUILD_TYPE)-$(shell date -u +%Y%m%d)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.arrow.version=$(ARROW_VERSION) \
  ro.arrow.releasetype=$(ARROW_BUILD_TYPE) \
  ro.modversion=$(ARROW_MOD_VERSION)

ARROW_DISPLAY_VERSION := Arrow-$(ARROW_MOD_VERSION)-$(ARROW_BUILD_TYPE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.arrow.display.version=$(ARROW_DISPLAY_VERSION)
