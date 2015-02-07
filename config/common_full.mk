# Inherit common Glade stuff
$(call inherit-product, vendor/glade/config/common.mk)

# Include Glade audio files
include vendor/glade/config/glade_audio.mk

# Optional Glade packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable \
    SoundRecorder \
    PhotoPhase

# Extra tools in Glade
PRODUCT_PACKAGES += \
    vim \
    zip \
    unrar
