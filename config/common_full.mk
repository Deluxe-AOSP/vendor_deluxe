# Inherit common deluxe stuff
$(call inherit-product, vendor/deluxe/config/common_mobile.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
