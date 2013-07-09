$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8960-common/msm8960.mk)

LOCAL_PATH := device/motorola/xt926

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := $(DEVICE_FOLDER)/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# xt926 specific overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Stk
PRODUCT_PACKAGES += \
    Stk

# Ubuntu
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ubuntu-session.d.conf:system/etc/ubuntu-session.d/xt926.conf

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=1 \
	ro.config.svlte1x=true \
	persist.radio.eons.enabled= true \
	ro.cdma.nbpcd=1 \
	ro.cdma.home.operator.isnan=1 \
	ro.telephony.gsm-routes-us-smsc=1 \
	ro.cdma.otaspnumschema=SELC,1,80,99 \
	ro.cdma.data_retry_config=max_retries=infinite,0,0,10000,10000,100000,10000,10000,10000,10000,140000,540000,960000 \
	ro.gsm.data_retry_config=default_randomization=2000,max_retries=infinite,1000,1000,80000,125000,485000,905000 \
	ro.gsm.2nd_data_retry_config=max_retries=1,15000 \
	persist.radio.mode_pref_nv10=1 \
	persist.radio.vrte_logic=2 \
	persist.radio.0x9e_not_callname=1 \
	persist.radio.skip_data_check=1 \
	persist.ril.max.crit.qmi.fails=4 \
	ro.cdma.home.operator.numeric=310004 \
	ro.cdma.home.operator.alpha=Verizon \
	ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
	ro.telephony.default_network=10 \
	ro.mot.ignore_csim_appid=true \
	telephony.rilV7NeedCDMALTEPhone=true \
	ro.cdma.subscribe_on_ruim_ready=true \
	persist.timed.enable=true

$(call inherit-product, device/motorola/msm8960-common/idc/idc.mk)
$(call inherit-product, device/motorola/msm8960-common/keychars/keychars.mk)
$(call inherit-product, device/motorola/msm8960-common/keylayout/keylayout.mk)
$(call inherit-product, device/motorola/msm8960-common/modules/nfc/nfc.mk)
$(call inherit-product-if-exists, vendor/motorola/xt926/xt926-vendor.mk)
