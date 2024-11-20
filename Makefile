export THEOS=/Users/dothanh1110/theos
ARCHS = arm64 

DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Alert
$(TWEAK_NAME)_FRAMEWORKS =  UIKit
$(TWEAK_NAME)_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
$(TWEAK_NAME)_CFLAGS = -fobjc-arc 
$(TWEAK_NAME)_FILES = Alert.mm

include $(THEOS_MAKE_PATH)/tweak.mk

