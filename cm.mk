## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := z4u

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/z4u/device_z4u.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := z4u
PRODUCT_NAME := cm_z4u
PRODUCT_BRAND := htc
PRODUCT_MODEL := z4u
PRODUCT_MANUFACTURER := htc
