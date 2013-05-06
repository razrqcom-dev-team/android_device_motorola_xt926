<<<<<<< HEAD
nherit-product, device/motorola/xt926/device_xt926.mk)

PRODUCT_COPY_FILES += device/sample.etc/apns/conf_verizon.xml:system/etc/apns-conf.xml

=======
$(call inherit-product, device/motorola/xt926/device_xt926.mk)
PRODUCT_COPY_FILES += device/sample/etc/apns/conf_verizon.xml:system/etc/apns-conf.xml
>>>>>>> 32a4ac92c6cf478b03971d73e5e57f575e804357
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


## Device identifier. This must come after all inclusions
<<<<<<< HEAD
=======

>>>>>>> 32a4ac92c6cf478b03971d73e5e57f575e804357
PRODUCT_DEVICE := xt926
PRODUCT_NAME := full_xt926
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT926
PRODUCT_MANUFACTURER := motorola
