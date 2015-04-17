ARCHS = armv7 arm64



include theos/makefiles/common.mk



BUNDLE_NAME = BeepBeep

BeepBeep_FILES = BeepBeep.mm Tutorial.mm

BeepBeep_INSTALL_PATH = /Library/PreferenceBundles

BeepBeep_FRAMEWORKS = UIKit AVFoundation Social

BeepBeep_PRIVATE_FRAMEWORKS = Preferences



include $(THEOS_MAKE_PATH)/bundle.mk



internal-stage::

	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)

	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/Application\ Support/BeepBeep/Sounds$(ECHO_END)

	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/BeepBeep.plist$(ECHO_END)

include $(THEOS_MAKE_PATH)/aggregate.mk

