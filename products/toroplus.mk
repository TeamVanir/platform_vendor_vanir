# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toroplus.mk)

# Inherit common product files.
$(call inherit-product, vendor/vicious/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vicious_toroplus
PRODUCT_BRAND := google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.0.4/IMM76D/299849:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.0.4 IMM76D 299849 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
    vendor/vicious/proprietary/common/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/vicious/proprietary/common/lib/libWVphoneAPI.so:system/lib/libWVphoneAPI.so \
    vendor/vicious/proprietary/common/vendor/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
    vendor/vicious/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/vicious/proprietary/common/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
    vendor/vicious/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/vicious/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/vicious/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/vicious/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \




