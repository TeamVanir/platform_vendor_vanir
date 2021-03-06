# Generic product
PRODUCT_NAME := Vanir
PRODUCT_BRAND := Vanir
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/common

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg \
    ro.modversion=Vanir-$(shell date +"%m-%d-%Y") 

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=240 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    debug.sf.hw=1 \
    ro.media.enc.jpeg.quality=100 \
    pm.sleep_mode=1 \
    ro.ril.disable.power.collapse=0 \
    ro.telephony.call_ring.delay=0 \
    video.accelerate.hw=1 \
    ro.kernel.checkjni=0 \
    net.tcp.buffersize.default=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.wifi=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.umts=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.gprs=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.edge=4096,87380,256960,4096,16384,256960 

#Bravia Engine Support 
PRODUCT_PROPERTY_OVERRIDES += \
ro.service.swiqi.supported=true \
persist.service.swiqi.enable=1

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IMM76D BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_EST_DATE=$(shell date +"%s")

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/app/PlayMusic.apk:system/app/PlayMusic.apk \
    vendor/vanir/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/vanir/proprietary/common/xbin/busybox:system/xbin/busybox \
    vendor/vanir/proprietary/common/xbin/su:system/xbin/su \
    vendor/vanir/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/vanir/proprietary/common/xbin/sysro:system/xbin/sysro 

#Init.d Scripts
PRODUCT_COPY_FILES +=  \
vendor/vanir/proprietary/common/etc/init.d/99init:system/etc/init.d/99init \
vendor/vanir/proprietary/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
vendor/vanir/proprietary/common/etc/init.d/97loopy:system/etc/init.d/97loopy 

# Misc Files
PRODUCT_COPY_FILES +=  \
vendor/vanir/proprietary/common/etc/hosts:system/etc/hosts \
vendor/vanir/proprietary/common/etc/resolv.conf:system/etc/resolv.conf 

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7.mk

# T-Mobile theme engine
PRODUCT_PACKAGES += \
       ThemeManager \
       ThemeChooser \
       Androidian \
       com.tmobile.themes

PRODUCT_COPY_FILES += \
       vendor/vanir/proprietary/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

