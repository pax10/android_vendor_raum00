PRODUCT_BRAND ?= raum00

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Cobalt.ogg \
    ro.config.alarm_alert=Nobelium.ogg

# Base audio files
include frameworks/base/data/sounds/AudioPackageElements.mk

LOCAL_PATH:= frameworks/base/data/sounds

# Effects
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/effects/ogg/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
	$(LOCAL_PATH)/effects/ogg/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
	$(LOCAL_PATH)/effects/ogg/Dock.ogg:system/media/audio/ui/Dock.ogg \
	$(LOCAL_PATH)/effects/ogg/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
	$(LOCAL_PATH)/effects/ogg/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
	$(LOCAL_PATH)/effects/ogg/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
	$(LOCAL_PATH)/effects/ogg/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
	$(LOCAL_PATH)/effects/ogg/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
	$(LOCAL_PATH)/effects/ogg/Lock.ogg:system/media/audio/ui/Lock.ogg \
	$(LOCAL_PATH)/effects/ogg/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
	$(LOCAL_PATH)/effects/ogg/Media_Volume.ogg:system/media/audio/ui/Media_Volume.ogg \
	$(LOCAL_PATH)/effects/ogg/Undock.ogg:system/media/audio/ui/Undock.ogg \
	$(LOCAL_PATH)/effects/ogg/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
	$(LOCAL_PATH)/effects/ogg/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
	$(LOCAL_PATH)/effects/ogg/VideoStop.ogg:system/media/audio/ui/VideoStop.ogg \
	$(LOCAL_PATH)/effects/ogg/VolumeIncremental.ogg:system/media/audio/ui/VolumeIncremental.ogg \

PRODUCT_PACKAGE_OVERLAYS += \
vendor/raum00/overlay/common

# T-Mobile theme engine
include vendor/raum00/config/themes_common.mk

# init.d support
PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/etc/init.d/01raumbomb:system/etc/init.d/01raumbomb \
    vendor/raum00/prebuilt/system/etc/init.d/91raumrzipalign:system/etc/init.d/91raumzialign

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
    vendor/raum00/prebuilt/system/xbin/zipalign:system/xbin/zipalign \
    vendor/raum00/prebuilt/system/xbin/sqlite3:system/xbin/sqlite3 \
    vendor/raum00/prebuilt/system/app/TricksterMod.apk:system/app/TricksterMod.apk
