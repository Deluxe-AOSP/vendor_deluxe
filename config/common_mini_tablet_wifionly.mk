# Inherit mini common deluxe stuff
$(call inherit-product, vendor/deluxe/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
