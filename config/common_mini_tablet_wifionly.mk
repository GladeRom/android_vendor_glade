# Inherit common Glade stuff
$(call inherit-product, vendor/glade/config/common.mk)

# Include Glade audio files
include vendor/glade/config/glade_audio.mk

# Required CM packages
PRODUCT_PACKAGES += \
    LatinIME

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/glade/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
