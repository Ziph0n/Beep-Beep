#import <SpringBoard/SpringBoard.h>
#import <AudioToolbox/AudioServices.h>
#import <AVFoundation/AVAudioPlayer.h>

#define BEEP @"/System/Library/Audio/UISounds/beep-beep.caf"

%hook SBUIController

-(void)_indicateConnectedToPower {

    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.ziph0n.beepbeep.plist"];

    BOOL enabled = [[prefs objectForKey:@"enabled"] boolValue];
    BOOL sound = [[prefs objectForKey:@"sound"] boolValue];
    BOOL vibration = [[prefs objectForKey:@"vibration"] boolValue];

    AVAudioPlayer *audioPlayer;

    NSURL *beepurl = [NSURL fileURLWithPath:[NSString stringWithFormat:BEEP]];

    if (enabled) {

        if (sound) {

            audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:beepurl error:nil];
            audioPlayer.numberOfLoops = 0;
            audioPlayer.volume = 1.0;
            [audioPlayer play];
        }

        if (vibration) {
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);

      [NSThread sleepForTimeInterval:0.5];

AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        }

    }

    else if (!enabled) {

            audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:beepurl error:nil];
            audioPlayer.numberOfLoops = 0;
            audioPlayer.volume = 1.0;
            [audioPlayer play];

AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);

      [NSThread sleepForTimeInterval:0.5];

AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);

    }

    

}

%end