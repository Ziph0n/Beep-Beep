#import <SpringBoard/SpringBoard.h>
#import <AudioToolbox/AudioServices.h>
#import <AVFoundation/AVAudioPlayer.h>

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

#define BEEPIOS8 @"/System/Library/Audio/UISounds/connect_power.caf"
#define BEEP @"/System/Library/Audio/UISounds/beep-beep.caf"

NSURL *beepios8url = [NSURL fileURLWithPath:[NSString stringWithFormat:BEEPIOS8]];
NSURL *beepurl = [NSURL fileURLWithPath:[NSString stringWithFormat:BEEP]];

%hook SBUIController

-(void)_indicateConnectedToPower {

    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.ziph0n.beepbeep.plist"];

    NSString *currentSound = [prefs objectForKey:@"currentSound"];
    if ([currentSound length] > 3) { currentSound = [currentSound substringToIndex:[currentSound length] - 4]; }
    NSString *mySoundPath = [[NSBundle bundleWithPath:@"/Library/Application Support/BeepBeep/Sounds/"] pathForResource:currentSound ofType:@"caf"];
    NSURL *mySoundURL = [[NSURL alloc] initFileURLWithPath:mySoundPath];

    BOOL enabled = [[prefs objectForKey:@"enabled"] boolValue];
    BOOL sound = [[prefs objectForKey:@"sound"] boolValue];
    BOOL custom = [[prefs objectForKey:@"custom"] boolValue];
    BOOL vibration = [[prefs objectForKey:@"vibration"] boolValue];

    AVAudioPlayer *audioPlayer;

    if (enabled) {

        if (sound) {

            if (!custom) {

            if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0")) {
                audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:beepios8url error:nil];
                audioPlayer.numberOfLoops = 0;
                audioPlayer.volume = 1.0;
                [audioPlayer play];
            } else {
                audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:beepurl error:nil];
                audioPlayer.numberOfLoops = 0;
                audioPlayer.volume = 1.0;
                [audioPlayer play];
            }

        }

        else if (custom) {

            audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:mySoundURL error:nil];
                audioPlayer.numberOfLoops = 0;
                audioPlayer.volume = 1.0;
                [audioPlayer play];
            }
        }

        if (vibration) {
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
            [NSThread sleepForTimeInterval:0.5];
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        }

    }

    else if (!enabled) {

            if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0")) {
                audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:beepios8url error:nil];
                audioPlayer.numberOfLoops = 0;
                audioPlayer.volume = 1.0;
                [audioPlayer play];
            } else {
                audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:beepurl error:nil];
                audioPlayer.numberOfLoops = 0;
                audioPlayer.volume = 1.0;
                [audioPlayer play];
            }

        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        [NSThread sleepForTimeInterval:0.5];
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);

    }

}

-(void) ACPowerChanged {

    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.ziph0n.beepbeep.plist"];

    BOOL enabled = [[prefs objectForKey:@"enabled"] boolValue];
    BOOL screen = [[prefs objectForKey:@"screen"] boolValue];

    if (enabled) {

        if (screen) {
        }

        else if (!screen) {
        %orig;
        }

    }

    else if (!enabled) {
        %orig;
    }

}

%end