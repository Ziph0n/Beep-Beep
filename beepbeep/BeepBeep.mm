#import <Preferences/Preferences.h>
#import <Social/SLComposeViewController.h>
#import <Social/SLServiceTypes.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>

#define kBundlePath @"/Library/Application Support/BeepBeep/Sounds/"
#define kSelfBundlePath @"/Library/PreferenceBundles/BeepBeep.bundle"


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

-(NSArray *)themeTitles {
    NSMutableArray* files = [[[NSFileManager defaultManager]
			      contentsOfDirectoryAtPath:kBundlePath error:nil] mutableCopy];
    for (int i = 0; i < files.count; i++) {
	NSString *file = [files objectAtIndex:i];
	file = [file stringByReplacingOccurrencesOfString:@".bundle" withString:@""];
	[files replaceObjectAtIndex:i withObject:file];
    }

    return files;
}

-(NSArray *)themeValues {
    NSMutableArray* files = [[[NSFileManager defaultManager]
			      contentsOfDirectoryAtPath:kBundlePath error:nil] mutableCopy];

    return files;
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

@interface CustomListItemsController : PSListItemsController
@end

AVAudioPlayer *audioPlayer;

@implementation CustomListItemsController

-(void)stopAudio{

if(audioPlayer && [audioPlayer isPlaying]){
    [audioPlayer stop];
    audioPlayer=nil;
    }
}

- (void)preview:(id)arg1
{
    [self stopAudio];

    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.ziph0n.beepbeep.plist"];

    NSString *currentSound = [prefs objectForKey:@"currentSound"];
    if ([currentSound length] > 3) { currentSound = [currentSound substringToIndex:[currentSound length] - 4]; }
    NSString *mySoundPath = [[NSBundle bundleWithPath:@"/Library/Application Support/BeepBeep/Sounds/"] pathForResource:currentSound ofType:@"caf"];
    NSURL *mySoundURL = [[NSURL alloc] initFileURLWithPath:mySoundPath];

    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:mySoundURL error:nil];
		audioPlayer.numberOfLoops = 0;
		audioPlayer.volume = 1.0;
		[audioPlayer play];
}

-(id)initForContentSize:(CGSize)contentSize
{
    if (!(self = [super initForContentSize:contentSize])) {
    return nil;
    }
	    UIBarButtonItem *previewButton([[UIBarButtonItem alloc] initWithTitle:@"Preview" style:UIBarButtonItemStyleDone target:self action:@selector(preview:)]);
	    previewButton.tag = 1;
	    [[self navigationItem] setRightBarButtonItem:previewButton];
	    [previewButton release];
	
    return self;
}
@end

// vim:ft=objc
