# Copyright (C) 2019 deluxeOS Project 2020
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

ANDROID_VERSION := a11
DELUXEVERSION := r1.0

DELUXE_BUILD_TYPE ?= PHANTOM
DELUXE_BUILD_DATE := $(shell date +%Y%m%d-%H%M)
TARGET_PRODUCT_SHORT := $(subst deluxe_,,$(DELUXE_BUILD))

# ZIP TYPE
ifeq ($(WITH_GAPPS), true)
DELUXE_BUILD_ZIP_TYPE := GAPPS
else
DELUXE_BUILD_ZIP_TYPE := VANILLA
endif

# OFFICIAL_DEVICES
ifeq ($(DELUXE_BUILD_TYPE), ORIGINAL)
   LIST = $(shell cat vendor/deluxe/deluxe.devices)
   ifeq ($(filter $(DELUXE_BUILD), $(LIST)), $(DELUXE_BUILD))
    IS_OFFICIAL=true
      DELUXE_BUILD_TYPE := OFFICIAL

endif

ifneq ($(IS_OFFICIAL), true)
DELUXE_BUILD_TYPE := PHATOM
$(error Device is PHANTOM "$(DELUXE_BUILD)")
endif
endif

# MAIN
DELUXE_VERSION := deluxeOS-$(DELUXEVERSION)-$(DELUXE_BUILD)-$(DELUXE_BUILD_TYPE)-$(DELUXE_BUILD_ZIP_TYPE)

DELUXE_MOD_VERSION :=$(ANDROID_VERSION)-$(DELUXEVERSION)

DELUXE_DISPLAY_VERSION := DeluxeOS-$(DELUXEVERSION)-$(DELUXE_BUILD_TYPE)

DELUXE_FINGERPRINT := DeluxeOS/$(DELUXE_MOD_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%H%M)
