## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := Highway Signs

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/wiko/s4750/device.mk)
$(call inherit-product-if-exists, vendor/wiko/s4750/s4750-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s4750
PRODUCT_NAME := cm_s4750
PRODUCT_BRAND := Wiko
PRODUCT_MODEL := Highway Signs
PRODUCT_MANUFACTURER := Wiko

PRODUCT_GMS_CLIENTID_BASE := android-mediatek
