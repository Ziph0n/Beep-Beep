#import <Preferences/Preferences.h>

@interface BeepBeepListController: PSListController {
}
@end

@implementation BeepBeepListController
- (id)specifiers {
	if(_specifiers == nil) {
	    if(UI_USER_INTERFACE_IDIOM () == UIUserInterfaceIdiomPad || [[[UIDevice currentDevice] model] isEqual:@"iPod touch"]) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"BeepBeep-iPad-iPod" target:self] retain];
	    } else {
		_specifiers = [[self loadSpecifiersFromPlistName:@"BeepBeep" target:self] retain];
	    }
	}
	return _specifiers;
}


- (void)twitter {
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter://user?screen_name=Ziph0n"]]) {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"twitter://user?screen_name=Ziph0n"]];
    } else {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/Ziph0n"]];
    }
}

- (void)sourceOnGithub {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/Ziph0n/Beep-Beep/tree/master"]];
}

- (void)reddit {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.reddit.com/user/Ziph0n/"]];
}

-(void) sendEmail {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto:ziph0ntweak@gmail.com?subject=Beep-Beep"]];
}

@end

// vim:ft=objc
