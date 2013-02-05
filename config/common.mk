PRODUCT_BRAND ?= raum00

#
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

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Include audio files
include vendor/raum00/config/raum_audio.mk

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

PRODUCT_PACKAGE_OVERLAYS += \
vendor/raum00/overlay/common

# T-Mobile theme engine
include vendor/raum00/config/themes_common.mk

# init.d support
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/etc/init.d/01raumbomb:system/etc/init.d/01raumbomb \
    vendor/raum00/prebuilt/system/etc/init.d/91raumzipalign:system/etc/init.d/91raumzialign \
    vendor/raum00/prebuilt/system/etc/init.d/97raumtcp:system/etc/init.d/97raumtcp

ifneq ($(filter raum_mako full_toro,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/etc/init.d/02raumkernel:system/etc/init.d/02raumkernel \
    vendor/raum00/prebuilt/system/etc/init.d/05raumfs:system/etc/init.d/05raumrfs \
    vendor/raum00/prebuilt/system/etc/init.d/99raumsystem:system/etc/init.d/99raumsystem
endif

ifeq ($(TARGET_PRODUCT),full_grouper)
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/etc/init.d/02raumkernel:system/etc/init.d/02raumkernelgrouper \
    vendor/raum00/prebuilt/system/etc/init.d/03raumgovgrouper:system/etc/init.d/03raumgovgrouper \
    vendor/raum00/prebuilt/system/etc/init.d/05raumfs:system/etc/init.d/05raumfsgrouper \
    vendor/raum00/prebuilt/system/etc/init.d/99raumsystem:system/etc/init.d/99raumsystemgrouper
endif

ifneq ($(TARGET_PRODUCT),full_grouper)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Demon.Voices.mp3 \
    ro.config.notification_sound=Evil.Sound.mp3 \
    ro.config.alarm_alert=Neptunium.ogg
endif

ifeq ($(TARGET_PRODUCT),full_grouper)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Yo.Phone.Is.Ringing.mp3 \
    ro.config.notification_sound=Neuralizer.mp3 \
    ro.config.alarm_alert=Plutonium.ogg
endif

#full speed
ifneq ($(filter raum_mako full_grouper,$(TARGET_PRODUCT)),)
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=128m \
    dalvik.vm.heapgrowthlimit=320m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=16m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapidealfree=8388608 \
    dalvik.vm.heapconcurrentstart=2097152
endif

# raum tuna
ifneq ($(filter full_maguro full_toro,$(TARGET_PRODUCT)),)
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heapsize=256m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m
endif

# sysinit and sysctl support
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/bin/sysinit:system/bin/sysinit \
    vendor/raum00/prebuilt/system/etc/sysctl.conf:system/etc/sysctl.conf

# Copy MiUi Security port
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/app/raumSecurity.apk:system/app/raumSecurity.apk \
    vendor/raum00/prebuilt/system/lib/liblbesec.so:system/lib/liblbesec.so \
    vendor/raum00/prebuilt/system/xbin/su:system/xbin/su

#killr extras
PRODUCT_PACKAGES += \
        raumWPs \
        raumLauncher \
        LockClock

# extras
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/xbin/7za:system/xbin/7za \
    vendor/raum00/prebuilt/system/xbin/zipalign:system/xbin/zipalign \
    vendor/raum00/prebuilt/system/xbin/sqlite3:system/xbin/sqlite3 \
    vendor/raum00/prebuilt/system/app/AdobeFlashPlayer.apk:system/app/AdobeFlashPlayer.apk \
    vendor/raum00/prebuilt/system/app/TricksterMod.apk:system/app/TricksterMod.apk

# Bootanimation
ifneq ($(TARGET_BOOTANIMATION_NAME),)
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/media/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
else
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/media/ba.zip:system/media/bootanimation.zip
endif
