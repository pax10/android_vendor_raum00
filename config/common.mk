# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/raum00/overlay/common
# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

#
PRODUCT_PACKAGES += \
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
    ro.build.tags=release-keys \
    windowsmgr.max_events_per_sec=512 \
    ro.kernel.android.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    ro.config.nocheckin=1 \
    debug.performance.tuning=1 \
    persist.service.swiqi.enable=1 \
    video.accelerate.hw=1 \
    ro.ril.enable.3g.prefix=1 \
    ro.ril.hep=1 \
    ro.ril.hsxpa=3 \
    ro.ril.enable.dtm=1 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=28 \
    ro.ril.enable.a53=1 \
    ro.ril.enable.3g.prefix=1 \
    ro.ril.hsupa.category=7 \
    persist.sys.purgeable_assets=1 \
    pm.sleep_mode=1 \
    ro.home_app_adj=1 \
    ro.ext4fs=1 \
    persist.sys.use_dithering=0 \
    ro.ril.disable.power.collapse=0 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.verify-bytecode=false \
    dalvik.vm.dexopt-flags=m=y,v=n,o=v \
    ro.dalvik.vm.checkjni=0 \
    ro.max.fling_velocity=15000 \
    ro.min.fling_velocity=8000 \
    ro.config.hw_fast_dormancy=1 \
    net.dns1=8.8.4.4 \
    net.dns2=8.8.8.8 \
    net.ppp0.dns1=8.8.8.8 \
    net.ppp0.dns2=8.8.4.4 \
    net.tcp.buffersize.default=6144,87380,1048576,6144,87380,524288 \
    net.tcp.buffersize.wifi=524288,1048576,2097152,524288,1048576,2097152 \
    net.tcp.buffersize.umts=6144,87380,1048576,6144,87380,524288 \
    net.tcp.buffersize.gprs=6144,87380,1048576,6144,87380,524288 \
    net.tcp.buffersize.edge=6144,87380,524288,6144,16384,262144 \
    net.tcp.buffersize.hspa=6144,87380,524288,6144,16384,262144 \
    net.tcp.buffersize.lte=524288,1048576,2097152,524288,1048576,2097152 \
    net.tcp.buffersize.hsdpa=6144,87380,1048576,6144,87380,1048576 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-verizon \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    dalvik.vm.lockprof.threshold=500 \
    wifi.supplicant_scan_interval=180 \

# init.d support
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/etc/init.d/01raumbomb:system/etc/init.d/01raumbomb \
    vendor/raum00/prebuilt/system/etc/init.d/91raumzipalign:system/etc/init.d/91raumzipalign \
    vendor/raum00/prebuilt/system/etc/init.d/97raumtcp:system/etc/init.d/97raumtcp

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \

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
    vim

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
-include vendor/raum00/configs/common_facelock.mk

# Bring in all audio files
-include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
-include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Include audio files
-include vendor/raum00/config/raum_audio.mk

# T-Mobile theme engine
-include vendor/raum00/config/themes_common.mk
