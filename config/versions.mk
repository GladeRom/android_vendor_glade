# Versioning System For Glade
# GLADE RELEASE VERSION
GLADE_VERSION_MAJOR = 3
GLADE_VERSION_MINOR = 1
GLADE_VERSION_MAINTENANCE =

VERSION := $(GLADE_VERSION_MAJOR).$(GLADE_VERSION_MINOR)$(GLADE_VERSION_MAINTENANCE)

# Set GLADE_BUILDTYPE
ifdef GLADE_NIGHTLY
    GLADE_BUILDTYPE := NIGHTLY
endif
ifdef GLADE_EXPERIMENTAL
    GLADE_BUILDTYPE := EXPERIMENTAL
endif
ifdef GLADE_RELEASE
    GLADE_BUILDTYPE := RELEASE
endif
ifdef GLADE_HOMEMADE
    GLADE_BUILDTYPE := HOMEMADE
endif
# Set Unofficial if no buildtype set (Buildtype should ONLY be set by GLADE Devs!)
ifdef GLADE_BUILDTYPE
else
    GLADE_BUILDTYPE := UNOFFICIAL
    GLADE_VERSION_MAJOR := 3
    GLADE_VERSION_MINOR := 1
endif

# Set GLADE version
ifdef GLADE_RELEASE
    GLADE_VERSION := Glade-Lollipop-v$(VERSION) 
else
    GLADE_VERSION := Glade-v$(VERSION)-$(GLADE_BUILD)-$(GLADE_BUILDTYPE)-$(shell date +%Y%m%d-%H%M)
endif

GLADE_DISPLAY_VERSION := $(VERSION)
GLADE_DISPLAY_BUILDSTATUS := $(GLADE_BUILDTYPE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(GLADE_VERSION) \
    glade.ota.version= $(shell date -u +%Y%m%d) \
    ro.glade.version=$(VERSION)-$(GLADE_BUILDTYPE)

PRODUCT_PROPERTY_OVERRIDES += \
ro.glade.display.version=$(GLADE_DISPLAY_VERSION) \
ro.glade.display.buildstatus=$(GLADE_DISPLAY_BUILDSTATUS)