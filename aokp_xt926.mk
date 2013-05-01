$(call inherit-product, vendor/aokp/configs/cdma.mk)
$(call inherit-product, vendor/aokp/configs/vzw.mk)
$(call inherit-product, vendor/aokp/configs/common.mk)
$(call inherit-product, vendor/aokp/configs/common_versions.mk)
$(call inherit-product, vendor/aokp/themes_common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

$(call inherit-product, device/motorola/xt926/device_xt926.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xt926
PRODUCT_RELEASE_NAME := xt926k
PRODUCT_NAME := aokp_xt926
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT926
PRODUCT_MANUFACTURER := motorola
PRODUCT_BUILD_PROP_OVERIDES += PRODUCT_BRAND=motorola PRODUCT_NAME=xt926 BUILD_PRODUCT=xt926 BUILD_FINGERPRINT=motorola/XT926_verizon/vanquish:4.1.1/9.8.1Q_37/39:user/release-keys
