# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/raum00/overlay/tuna

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Yo.Phone.Is.Ringing.mp3 \
    ro.config.notification_sound=Neuralizer.mp3 \
    ro.config.alarm_alert=Plutonium.ogg

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-verizon \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
    ro.gsm.data_retry_config=max_retries=infinite,default_randomization=2000,0,0,80000,125000,485000,905000 \
    ro.gsm.2nd_data_retry_config=max_retries=infinite,default_randomization=2000,0,0,80000,125000,485000,905000 \
    ro.cdma.otaspnumschema=SELC,1,80,99 \
    ro.cdma.otaspnumschema=SELC,1,80,99 \
    ro.com.android.dataroaming=false \
    camera.flash_off=0 \
    persist.sys.camera-sound=0 \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heapsize=256m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/system/etc/init.d/02raumkernel:system/etc/init.d/02raumkernel \
    vendor/raum00/prebuilt/system/etc/init.d/05raumfs:system/etc/init.d/05raumrfs \
    vendor/raum00/prebuilt/system/etc/init.d/99raumsystem:system/etc/init.d/99raumsystem

PRODUCT_COPY_FILES += \
     vendor/raum00/prebuilt/system/media/ba-toro.zip:system/media/bootanimation.zip

