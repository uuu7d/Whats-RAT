
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Devland
Devland_FILES = Tweak.xm DevRSettingsViewController.mm
Devland_FRAMEWORKS = UIKit CoreLocation MapKit
Devland_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
