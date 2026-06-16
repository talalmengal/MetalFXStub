# Target the architecture of the iPhone 7 / SE 3
ARCHS = arm64
TARGET := iphone:clang:latest:15.0

TWEAK_NAME = MetalFXStub
MetalFXStub_FILES = Tweak.x
MetalFXStub_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
