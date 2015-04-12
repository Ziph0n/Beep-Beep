ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = BeepBeep
BeepBeep_FILES = Tweak.xm
BeepBeep_FRAMEWORKS = UIKit AudioToolbox AVFoundation

export GO_EASY_ON_ME := 1


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += beepbeep
include $(THEOS_MAKE_PATH)/aggregate.mk
