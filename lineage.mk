# # Boot animation
# TARGET_SCREEN_HEIGHT := 1920
# TARGET_SCREEN_WIDTH := 1080
# TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/asus/asus-a86/full_asus_a86.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ASUS-A86
PRODUCT_NAME := lineage_ww_padfone
PRODUCT_BRAND := asus
PRODUCT_MODEL := PadFone T004
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ww_padfone \
    PRIVATE_BUILD_DESC="WW_PadFone-user 5.0.2 LRX22G 12.4.0.72-20151116 release-keys"

BUILD_FINGERPRINT := asus/WW_PadFone/ASUS-A86:5.0.2/LRX22G/12.4.0.72-20151116:user/release-keys
