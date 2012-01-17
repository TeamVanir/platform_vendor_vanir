# JDK
$(call inherit-product, vendor/jdk/products/common.mk)

# Audio Packages
include frameworks/base/data/sounds/AllAudio.mk

# Default Ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg


