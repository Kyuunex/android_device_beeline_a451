## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := a451

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/beeline/a451/device.mk)

TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a451
PRODUCT_NAME := lineage_a451
PRODUCT_BRAND := beeline
PRODUCT_MODEL := Beeline Pro 5
PRODUCT_MANUFACTURER := beeline

PRODUCT_GMS_CLIENTID_BASE := android-beeline

# Available languages
PRODUCT_LOCALES := en_US 
