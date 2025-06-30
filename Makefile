ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = WhatsApp

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DevlandFull
DevlandFull_FILES = Tweak.xm
DevlandFull_FRAMEWORKS = UIKit Contacts CoreLocation MapKit WebKit
DevlandFull_PRIVATE_FRAMEWORKS = ContactsUI
DevlandFull_CFLAGS = -fobjc-arc -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WhatsApp || :"
