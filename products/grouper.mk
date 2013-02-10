# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit raum00 common_tablet bits
$(call inherit-product, vendor/raum00/config/tablet.mk)

# Grouper Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/raum00/overlay/grouper

# Setup device specific product configuration.
PRODUCT_NAME := raum_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.1.1/JRO03H/405518:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03H 405518 release-keys" BUILD_NUMBER=405518

PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/bootanimation/bootanimation-grouper.zip:system/media/bootanimation.zip
