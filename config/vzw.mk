#Permissions and Lib for Verizon Wireless Apps
PRODUCT_PACKAGES += \
    MyVerizon \
    VerizonSSO \
    VZWBackupAssistant \
    VZWAPNLib \
    VZWAPNService 
#    VZWBackupAssistant \
#    VerizonSSO

PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/vzw/etc/permissions/com.vzw.hardware.ehrpd.xml:system/etc/permissions/com.vzw.hardware.ehrpd.xml \
    vendor/raum00/prebuilt/vzw/etc/permissions/com.vzw.hardware.lte.xml:system/etc/permissions/com.vzw.hardware.lte.xml \
    vendor/raum00/prebuilt/vzw/etc/permissions/com.vzw.vzwapnlib.xml:system/etc/permissions/com.vzw.vzwapnlib.xml \
    vendor/raum00/prebuilt/vzw/lib/libmotricity.so:system/lib/libmotricity.so
