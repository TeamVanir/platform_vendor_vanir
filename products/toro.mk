# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/jdk/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := jdk_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=ICL53F BUILD_FINGERPRINT=google/mysid/toro:4.0.2/ICL53F/235179:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.2 ICL53F 235179 release-keys" BUILD_NUMBER=235179

# Inherit common build.prop overrides
#-include vendor/jdk/products/common_versions.mk

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/jdk/proprietary/toro/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/jdk/proprietary/toro/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/jdk/proprietary/toro/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/jdk/proprietary/toro/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/jdk/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/jdk/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/jdk/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \



