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

ARROW_BUILD_TYPE := OFFICIAL

ARROW_VERSION := Arrow-$(ARROW_MOD_VERSION)-$(CURRENT_DEVICE)-$(ARROW_BUILD_TYPE)-$(shell date -u +%Y%m%d)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.arrow.version=$(ARROW_VERSION) \
  ro.arrow.releasetype=$(ARROW_BUILD_TYPE) \
  ro.modversion=$(ARROW_MOD_VERSION)

ARROW_DISPLAY_VERSION := Arrow-$(ARROW_MOD_VERSION)-$(ARROW_BUILD_TYPE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.arrow.display.version=$(ARROW_DISPLAY_VERSION)
