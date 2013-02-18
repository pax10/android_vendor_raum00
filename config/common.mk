# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/raum00/overlay/common
# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

#
PRODUCT_PACKAGES += \
    Camera \
    Development \
    LatinIME
    AdobeFlashPlayer \
    AppWidgetPicker \
    LatinImeDictionaryPack \
    Microbes \
    MusicFX \
    raumLauncher \
    raumWPs \
    raumSecurity \
    ROMControl \
    SolidExplorer \
    Torch \
    TricksterMod

# Use prebuilt su until fixed when built
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/xbin/7za:system/xbin/7za \
    vendor/raum00/prebuilt/system/lib/liblbesec.so:system/lib/liblbesec.so \
    vendor/raum00/prebuilt/system/xbin/su:system/xbin/su

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0
    ro.ril.disable.power.collapse=0 \
    net.bt.name=Android \
    ro.com.google.networklocation=0 \
    ro.com.google.locationfeatures=0 \
    wifi.supplicant_scan_interval=200 \
    net.dns1=8.8.4.4 \
    net.dns2=8.8.8.8 \
    net.ppp0.dns1=8.8.8.8 \
    net.ppp0.dns2=8.8.4.4 \
    ro.home_app_adj=1 \
    ro.home_app_mem=8192 \
    ro.lge.proximity.delay=20 \
    mot.proximity.delay=20 \
    windowsmgr.max_events_per_sec=180 \
    launcher.force_enable_rotation=true \
    windowsmgr.support_rotation_270=true \
    debug.egl.profiler=1 \
    debug.egl.hw=1 \
    debug.sf.hw=1 \
    persist.sys.ui.hw=1 \
    pm.sleep_mode=1 \
    ro.min_pointer_dur=8 \
    ro.max.fling_velocity=12000 \
    ro.min.fling_velocity=8000 \
    ro.config.hwfeature_wakeupkey=0 \
    ro.ext4fs=1 \
    debug.composition.type=gpu \
    ro.mot.eri.losalert.delay=1000 \
    drm.service.enabled=true \
    sys.keep_app_1=com.google.android.googlequicksearchbox \
    ro.vold.umsdirtyratio=20 \
    movfilter=40 \
    move \
    hyst=0 \
    per_sec=300 \


# init.d support
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/etc/init.d/01raumbomb:system/etc/init.d/01raumbomb \
    vendor/raum00/prebuilt/system/etc/init.d/91raumzipalign:system/etc/init.d/91raumzipalign \
    vendor/raum00/prebuilt/system/etc/init.d/97raumtcp:system/etc/init.d/97raumtcp

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \

PRODUCT_PACKAGES += \
    Basic \
    SoundRecorder

PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    openvpn \
    libssh \
    ssh \
    sshd \
    sshd-config \
    ssh-keygen \
    sftp \
    scp

PRODUCT_PACKAGES += \
    bash \
    busybox \
    DSPManager \
    libcyanogen-dsp \
    libncurses \
    vim \
    htop \
    powertop

ifeq ($(TARGET_PRODUCT),full_grouper)
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/etc/init.d/02raumkernel:system/etc/init.d/02raumkernelgrouper \
    vendor/raum00/prebuilt/system/etc/init.d/03raumgovgrouper:system/etc/init.d/03raumgovgrouper \
    vendor/raum00/prebuilt/system/etc/init.d/05raumfs:system/etc/init.d/05raumfsgrouper \
    vendor/raum00/prebuilt/system/etc/init.d/99raumsystem:system/etc/init.d/99raumsystemgrouper
endif

# sysinit and sysctl support
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/bin/sysinit:system/bin/sysinit \
    vendor/raum00/prebuilt/system/etc/sysctl.conf:system/etc/sysctl.conf

# Inherit Face lock security blobs
#-include vendor/raum00/config/common_facelock.mk

# Bring in all audio files
#-include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
#-include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Include audio files
-include vendor/raum00/config/raum_audio.mk

# T-Mobile theme engine
-include vendor/raum00/config/themes_common.mk
