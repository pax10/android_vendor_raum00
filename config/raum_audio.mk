#
# raum audio files
#

ALARM_PATH := vendor/raum00/prebuilt/system/media/audio/alarms
NOTIFICATION_PATH := vendor/raum00/prebuilt/system/media/audio/notifications
RINGTONE_PATH := vendor/raum00/prebuilt/system/media/audio/ringtones
UI_PATH := vendor/raum00/prebuilt/system/media/audio/ui

# Alarms
PRODUCT_COPY_FILES += \
        $(ALARM_PATH)/808Alarm.ogg:system/media/audio/alarms/808Alarm.ogg

# Notifications
PRODUCT_COPY_FILES += \
	$(NOTIFICATION_PATH)/Evil.Sound.ogg:system/media/audio/notifications/Evil.Sound.ogg \
	$(NOTIFICATION_PATH)/MeepMeep.ogg:system/media/audio/notifications/MeepMeep.ogg \
	$(NOTIFICATION_PATH)/Neuralizer.ogg:system/media/audio/notifications/Neuralizer.ogg \
	$(NOTIFICATION_PATH)/Nintendo.ogg:system/media/audio/notifications/Nintendo.ogg \
	$(NOTIFICATION_PATH)/Sms.Bomb.ogg:system/media/audio/notifications/Sms.Bomb.ogg


# Ringtones
PRODUCT_COPY_FILES += \
	$(RINGTONE_PATH)/Yo.Phone.Is.Ringing.ogg:system/media/audio/ringtones/Yo.Phone.Is.Ringing.ogg \
	$(RINGTONE_PATH)/Demon.Voices.ogg:system/media/audio/ringtones/Demon.Voices.ogg \
	$(RINGTONE_PATH)/Nexus.4-8.ogg:system/media/audio/ringtones/Nexus.4-8.ogg \
	$(RINGTONE_PATH)/Nexus.4-9.ogg:system/media/audio/ringtones/Nexus.4-9.ogg \
	$(RINGTONE_PATH)/Mom.ogg:system/media/audio/ringtones/Mom.ogg

