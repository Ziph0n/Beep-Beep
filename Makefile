include theos/makefiles/common.mk

TWEAK_NAME = BeepBeep
BeepBeep_FILES = Tweak.xm
BeepBeep_FRAMEWORKS = UIKit AudioToolbox AVFoundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += beepbeep
include $(THEOS_MAKE_PATH)/aggregate.mk
