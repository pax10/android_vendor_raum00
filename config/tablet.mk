# grouper overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/raum00/overlay/grouper \
    vendor/raum00/overlay/common_tablet

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Evil.Sound.ogg \
    ro.config.alarm_alert=Neptunium.ogg

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=128m \
    dalvik.vm.heapgrowthlimit=320m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=16m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapidealfree=8388608 \
    dalvik.vm.heapconcurrentstart=2097152

PRODUCT_COPY_FILES += \
     vendor/raum00/prebuilt/system/media/ba-grouper.zip:system/media/bootanimation.zip
