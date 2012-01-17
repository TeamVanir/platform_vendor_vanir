# Generic product
PRODUCT_NAME := jdk
PRODUCT_BRAND := jdk
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/jdk/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/jdk/proprietary/common/app/BooksTablet.apk:system/app/BooksTablet.apk \
    vendor/jdk/proprietary/common/app/Calendar.apk:system/app/Calendar.apk \
    vendor/jdk/proprietary/common/app/CarHome.apk:system/app/CarHome.apk \
    vendor/jdk/proprietary/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/jdk/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/jdk/proprietary/common/app/Gmail.apk:system/app/Gmail.apk \
    vendor/jdk/proprietary/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/jdk/proprietary/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/jdk/proprietary/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/jdk/proprietary/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/jdk/proprietary/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/jdk/proprietary/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/jdk/proprietary/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/jdk/proprietary/common/app/LatinIMEDictionaryPack.apk:system/app/LatinIMEDictionaryPack.apk \
    vendor/jdk/proprietary/common/app/Maps.apk:system/app/Maps.apk \
    vendor/jdk/proprietary/common/app/MarketUpdater.apk:system/app/MarketUpdater.apk \
    vendor/jdk/proprietary/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/jdk/proprietary/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/jdk/proprietary/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/jdk/proprietary/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/jdk/proprietary/common/app/QuickSearchBox.apk:system/app/QuickSearchBox.apk \
    vendor/jdk/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/jdk/proprietary/common/app/Street.apk:system/app/Street.apk \
    vendor/jdk/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/jdk/proprietary/common/app/Talk.apk:system/app/Talk.apk \
    vendor/jdk/proprietary/common/app/talkback.apk:system/app/talkback.apk \
    vendor/jdk/proprietary/common/etc/contributors.css:system/etc/contributors.css \
    vendor/jdk/proprietary/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/jdk/proprietary/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/jdk/proprietary/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/jdk/proprietary/common/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    vendor/jdk/proprietary/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/jdk/proprietary/common/lib/libflint_engine_jni_api.so:system/lib/libflint_engine_jni_api.so \
    vendor/jdk/proprietary/common/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/jdk/proprietary/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/jdk/proprietary/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/jdk/proprietary/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/jdk/proprietary/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/jdk/proprietary/common/xbin/su:system/xbin/su \
    vendor/jdk/proprietary/common/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/jdk/proprietary/common/app/Music.apk:system/app/Music.apk \
    vendor/jdk/proprietary/common/app/Videos.apk:system/app/Videos.apk \
    vendor/jdk/proprietary/common/app/VoiceSearch.apk:system/app/VoiceSearch.apk \
    vendor/jdk/proprietary/common/app/YouTube.apk:system/app/YouTube.apk

# ringtones
include vendor/jdk/products/common_ringtones.mk

# build prop mods
include vendor/jdk/products/common_build_properties.mk


# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

