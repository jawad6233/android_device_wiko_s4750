## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := Highway Signs

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/wiko/s4750/device_s4750.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s4750
PRODUCT_NAME := cm_s4750
PRODUCT_BRAND := Wiko
PRODUCT_MODEL := Highway Signs
PRODUCT_MANUFACTURER := Wiko
