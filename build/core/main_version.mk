# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# deluxeOS System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.deluxe.buildtype=$(DELUXE_BUILD_TYPE) \
    ro.deluxe.build.date=$(DELUXE_BUILD_DATE) \
    ro.deluxe.display.version=$(DELUXE_DISPLAY_VERSION) \
    ro.deluxe.android_version=$(ANDROID_VERSION) \
    ro.deluxe.releasetype=$(DELUXE_BUILD_TYPE) \
    ro.deluxeversion=$(DELUXEVERSION) \
    ro.deluxe.version=$(DELUXE_VERSION) \
    ro.modversion=$(DELUXE_MOD_VERSION) \
    ro.deluxe.ziptype=$(DELUXE_BUILD_ZIP_TYPE) \
    org.deluxe.fingerprint=$(DELUXE_FINGERPRINT)
