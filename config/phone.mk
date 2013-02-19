# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/raum00/overlay/tuna

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Yo.Phone.Is.Ringing.mp3 \
    ro.config.notification_sound=Neuralizer.mp3 \
    ro.config.alarm_alert=Plutonium.ogg

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false \
    camera.flash_off=0 \
    persist.sys.camera-sound=0 \
    ring.delay=0 \
    ro.telephony.call_ring.delay=400 \
    ro.ril.disable.power.collapse=1 \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heapsize=256m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.checkjni=false \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.lockprof.threshold=850 \
    dalvik.vm.verify-bytecode=false \

PRODUCT_PACKAGES += \
    SpeakerProximity

PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/etc/init.d/02raumkernel:system/etc/init.d/02raumkernel \
    vendor/raum00/prebuilt/system/etc/init.d/05raumfs:system/etc/init.d/05raumrfs \
    vendor/raum00/prebuilt/system/etc/init.d/99raumsystem:system/etc/init.d/99raumsystem

PRODUCT_COPY_FILES += \
     vendor/raum00/prebuilt/system/media/ba-toro.zip:system/media/bootanimation.zip

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7.mk
