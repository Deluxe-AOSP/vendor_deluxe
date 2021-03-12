# Inherit full common deluxe stuff
$(call inherit-product, vendor/deluxe/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
