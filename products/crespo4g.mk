#Inherit AOSP device configuration for crespo4g.
$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=sojus BUILD_FINGERPRINT=google/sojus/crespo4g:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="sojus-user 4.0.4 IMM76D 299849 release-keys" BUILD_NUMBER=299849

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/vanir/proprietary/common/lib/libWVphoneAPI.so:system/lib/libWVphoneAPI.so \
    vendor/vanir/proprietary/common/vendor/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
    vendor/vanir/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/vanir/proprietary/common/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
    vendor/vanir/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \

# Copy crespo specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/crespo/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/vanir/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd  \
    vendor/vanir/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd 


