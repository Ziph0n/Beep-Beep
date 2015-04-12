#import <Preferences/Preferences.h>
#import <Social/SLComposeViewController.h>
#import <Social/SLServiceTypes.h>
#import <UIKit/UIKit.h>

@interface BeepBeepListController: PSListController {
}
@end

@interface ViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@end

@implementation BeepBeepListController
- (id)specifiers {
	if(_specifiers == nil) {
	    if(UI_USER_INTERFACE_IDIOM () == UIUserInterfaceIdiomPad || [[[UIDevice currentDevice] model] isEqual:@"iPod touch"]) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"BeepBeep-iPad-iPod" target:self] retain];
	    } else {
		_specifiers = [[self loadSpecifiersFromPlistName:@"BeepBeep" target:self] retain];
	    }
	UIBarButtonItem *shareButton ([[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(composeTweet:)]);
	shareButton.tag = 1;
	[[self navigationItem] setRightBarButtonItem:shareButton];
	[shareButton release];
	}
	return _specifiers;
}

-(void)composeTweet:(id)sender
{
	SLComposeViewController * composeController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
	[composeController setInitialText:@"I'm using Beep Beep, an awesome Cydia tweak by @Ziph0n. Get it now!"];
	[self presentViewController:composeController animated:YES completion:nil];
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
