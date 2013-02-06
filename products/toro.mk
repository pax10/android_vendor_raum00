# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit raum00 common bits
$(call inherit-product, vendor/raum00/config/common.mk)

# Inherit common phone files
$(call inherit-product, vendor/raum00/config/phone.mk)

# Inherit common Verizon Wireless Files
$(call inherit-product, vendor/raum00/config/vzw.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/raum00/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := full_toro
PRODUCT_BRAND := Google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=ICL53F BUILD_FINGERPRINT=google/mysid/toro:4.0.2/ICL53F/235179:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.2 ICL53F 235179 release-keys" BUILD_NUMBER=235179

# Toro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/raum00/prebuilt/bootanimation/bootanimation-toro.zip:system/media/bootanimation.zip
