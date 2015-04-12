#import <SpringBoard/SpringBoard.h>
#import <AudioToolbox/AudioServices.h>
#import <AVFoundation/AVAudioPlayer.h>

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

#define BEEPIOS8 @"/System/Library/Audio/UISounds/connect_power.caf"
#define BEEP @"/System/Library/Audio/UISounds/beep-beep.caf"

NSURL *beepios8url = [NSURL fileURLWithPath:[NSString stringWithFormat:BEEPIOS8]];
NSURL *beepurl = [NSURL fileURLWithPath:[NSString stringWithFormat:BEEP]];

#define POK1 @"/Library/Beep Beep/Pokemon/Caught a Pokemon.caf"
#define POK2 @"/Library/Beep Beep/Pokemon/Gift Pokemon.caf"
#define POK3 @"/Library/Beep Beep/Pokemon/Healing.caf"
#define POK4 @"/Library/Beep Beep/Pokemon/Item Obtained.caf"
#define POK5 @"/Library/Beep Beep/Pokemon/Key Item Obtained.caf"
#define POK6 @"/Library/Beep Beep/Pokemon/Level Up.caf"
#define POK7 @"/Library/Beep Beep/Pokemon/Pika Pika.caf"
#define POK8 @"/Library/Beep Beep/Pokemon/Pika.caf"
#define POK9 @"/Library/Beep Beep/Pokemon/Pikachu.caf"
#define POK10 @"/Library/Beep Beep/Pokemon/Professor Oak's Pokedex Rating.caf"

#define POR1 @"/Library/Beep Beep/Portal 2/Cave (I Like Your Style).caf"
#define POR2 @"/Library/Beep Beep/Portal 2/Cave (Make Some Science).caf"
#define POR3 @"/Library/Beep Beep/Portal 2/Deffective Turret (Aaannd We're Back).caf"
#define POR4 @"/Library/Beep Beep/Portal 2/Deffective Turret (Fantastic).caf"
#define POR5 @"/Library/Beep Beep/Portal 2/Deffective Turret (Gave It Everything).caf"
#define POR6 @"/Library/Beep Beep/Portal 2/Deffective Turret (Hello Stranger).caf"
#define POR7 @"/Library/Beep Beep/Portal 2/Deffective Turret (Hello, Oh Crap).caf"
#define POR8 @"/Library/Beep Beep/Portal 2/Deffective Turret (Hi There).caf"
#define POR9 @"/Library/Beep Beep/Portal 2/Deffective Turret (Not Defective).caf"
#define POR10 @"/Library/Beep Beep/Portal 2/Deffective Turret (What's Happening).caf"
#define POR11 @"/Library/Beep Beep/Portal 2/Glad0s (Commence Standing By).caf"
#define POR12 @"/Library/Beep Beep/Portal 2/Glad0s (Excellent).caf"
#define POR13 @"/Library/Beep Beep/Portal 2/Glad0s (Hello).caf"
#define POR14 @"/Library/Beep Beep/Portal 2/Glad0s (It's Been A Long Time).caf"
#define POR15 @"/Library/Beep Beep/Portal 2/Glad0s (Oh It's You).caf"
#define POR16 @"/Library/Beep Beep/Portal 2/Glad0s (One Moment).caf"
#define POR17 @"/Library/Beep Beep/Portal 2/Glad0s (Really... ok).caf"
#define POR18 @"/Library/Beep Beep/Portal 2/Glad0s (Surprise).caf"
#define POR19 @"/Library/Beep Beep/Portal 2/Glad0s (Yes I See You).caf"
#define POR20 @"/Library/Beep Beep/Portal 2/Portal Gun (Shoot Blue).caf"
#define POR21 @"/Library/Beep Beep/Portal 2/Portal Gun (Shoot Red).caf"
#define POR22 @"/Library/Beep Beep/Portal 2/Turret (Activated).caf"
#define POR23 @"/Library/Beep Beep/Portal 2/Turret (Can I Help You).caf"
#define POR24 @"/Library/Beep Beep/Portal 2/Turret (Hello Friend).caf"
#define POR25 @"/Library/Beep Beep/Portal 2/Turret (Hellooo).caf"
#define POR26 @"/Library/Beep Beep/Portal 2/Turret (Hey Hey Hey).caf"
#define POR27 @"/Library/Beep Beep/Portal 2/Turret (Hibernating).caf"
#define POR28 @"/Library/Beep Beep/Portal 2/Turret (Hooray).caf"
#define POR29 @"/Library/Beep Beep/Portal 2/Turret (I'm Different).caf"
#define POR30 @"/Library/Beep Beep/Portal 2/Turret (Is Anyone There).caf"
#define POR31 @"/Library/Beep Beep/Portal 2/Turret (Nap Time).caf"
#define POR32 @"/Library/Beep Beep/Portal 2/Turret (Ohhh).caf"
#define POR33 @"/Library/Beep Beep/Portal 2/Turret (Protect The Humans).caf"
#define POR34 @"/Library/Beep Beep/Portal 2/Turret (Resting).caf"
#define POR35 @"/Library/Beep Beep/Portal 2/Turret (Sentry Mode Activated).caf"
#define POR36 @"/Library/Beep Beep/Portal 2/Turret (Sleep Mode).caf"
#define POR37 @"/Library/Beep Beep/Portal 2/Turret (Target Acquired).caf"
#define POR38 @"/Library/Beep Beep/Portal 2/Turret (Thank You).caf"
#define POR39 @"/Library/Beep Beep/Portal 2/Turret (Whoooaaa).caf"
#define POR40 @"/Library/Beep Beep/Portal 2/Turret (Who's There).caf"
#define POR41 @"/Library/Beep Beep/Portal 2/Turret (Wowowow).caf"
#define POR42 @"/Library/Beep Beep/Portal 2/Wheatley (Aaand Nothing).caf"
#define POR43 @"/Library/Beep Beep/Portal 2/Wheatley (Ahhh).caf"
#define POR44 @"/Library/Beep Beep/Portal 2/Wheatley (Cough).caf"
#define POR45 @"/Library/Beep Beep/Portal 2/Wheatley (How Good This Feels).caf"
#define POR46 @"/Library/Beep Beep/Portal 2/Wheatley (Pick Me Up).caf"
#define POR47 @"/Library/Beep Beep/Portal 2/Wheatley (Space).caf"
#define POR48 @"/Library/Beep Beep/Portal 2/Wheatley (That Felt Really Good).caf"
#define POR49 @"/Library/Beep Beep/Portal 2/Wheatley (That Was Easy).caf"
#define POR50 @"/Library/Beep Beep/Portal 2/Wheatley (We're In Space).caf"
#define POR51 @"/Library/Beep Beep/Portal 2/Wheatley (What Happened).caf"
#define POR52 @"/Library/Beep Beep/Portal 2/Wheatley (What's That).caf"

#define OTH1 @"/Library/Beep Beep/Other/Falcon Punch.caf"
#define OTH2 @"/Library/Beep Beep/Other/Final Fantasy Victory.caf"
#define OTH3 @"/Library/Beep Beep/Other/Link Spin Attack.caf"
#define OTH4 @"/Library/Beep Beep/Other/Mario (Chuckle).caf"
#define OTH5 @"/Library/Beep Beep/Other/Mario (Yahoo).caf"
#define OTH6 @"/Library/Beep Beep/Other/Mario Coin Chime.caf"
#define OTH7 @"/Library/Beep Beep/Other/Metal Gear Solid (Exclamation Point (!)).caf"
#define OTH8 @"/Library/Beep Beep/Other/Mortal Kombat (Flawless Victory).caf"
#define OTH9 @"/Library/Beep Beep/Other/Mortal Kombat (Toasty!).caf"
#define OTH10 @"/Library/Beep Beep/Other/Ness (PK Fire).caf"
#define OTH11 @"/Library/Beep Beep/Other/Ness (PK Thunder).caf"
#define OTH12 @"/Library/Beep Beep/Other/Seinfeld.caf"
#define OTH13 @"/Library/Beep Beep/Other/Short Circuit Zap.caf"
#define OTH14 @"/Library/Beep Beep/Other/Skyrim (FUS RO DAH).caf"
#define OTH15 @"/Library/Beep Beep/Other/Spacey.caf"
#define OTH16 @"/Library/Beep Beep/Other/Unsheath Sword.caf"
#define OTH17 @"/Library/Beep Beep/Other/Yoshi Sound.caf"



NSURL *pok1 = [NSURL fileURLWithPath:[NSString stringWithFormat:POK1]];
NSURL *pok2 = [NSURL fileURLWithPath:[NSString stringWithFormat:POK2]];
NSURL *pok3 = [NSURL fileURLWithPath:[NSString stringWithFormat:POK3]];
NSURL *pok4 = [NSURL fileURLWithPath:[NSString stringWithFormat:POK4]];
NSURL *pok5 = [NSURL fileURLWithPath:[NSString stringWithFormat:POK5]];
NSURL *pok6 = [NSURL fileURLWithPath:[NSString stringWithFormat:POK6]];
NSURL *pok7 = [NSURL fileURLWithPath:[NSString stringWithFormat:POK7]];
NSURL *pok8 = [NSURL fileURLWithPath:[NSString stringWithFormat:POK8]];
NSURL *pok9 = [NSURL fileURLWithPath:[NSString stringWithFormat:POK9]];
NSURL *pok10 = [NSURL fileURLWithPath:[NSString stringWithFormat:POK10]];

NSURL *por1 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR1]];
NSURL *por2 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR2]];
NSURL *por3 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR3]];
NSURL *por4 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR4]];
NSURL *por5 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR5]];
NSURL *por6 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR6]];
NSURL *por7 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR7]];
NSURL *por8 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR8]];
NSURL *por9 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR9]];
NSURL *por10 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR10]];
NSURL *por11 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR11]];
NSURL *por12 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR12]];
NSURL *por13 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR13]];
NSURL *por14 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR14]];
NSURL *por15 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR15]];
NSURL *por16 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR16]];
NSURL *por17 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR17]];
NSURL *por18 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR18]];
NSURL *por19 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR19]];
NSURL *por20 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR20]];
NSURL *por21 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR21]];
NSURL *por22 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR22]];
NSURL *por23 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR23]];
NSURL *por24 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR24]];
NSURL *por25 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR25]];
NSURL *por26 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR26]];
NSURL *por27 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR27]];
NSURL *por28 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR28]];
NSURL *por29 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR29]];
NSURL *por30 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR30]];
NSURL *por31 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR31]];
NSURL *por32 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR32]];
NSURL *por33 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR33]];
NSURL *por34 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR34]];
NSURL *por35 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR35]];
NSURL *por36 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR36]];
NSURL *por37 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR37]];
NSURL *por38 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR38]];
NSURL *por39 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR39]];
NSURL *por40 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR40]];
NSURL *por41 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR41]];
NSURL *por42 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR42]];
NSURL *por43 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR43]];
NSURL *por44 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR44]];
NSURL *por45 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR45]];
NSURL *por46 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR46]];
NSURL *por47 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR47]];
NSURL *por48 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR48]];
NSURL *por49 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR49]];
NSURL *por50 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR50]];
NSURL *por51 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR51]];
NSURL *por52 = [NSURL fileURLWithPath:[NSString stringWithFormat:POR52]];

NSURL *oth1 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH1]];
NSURL *oth2 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH2]];
NSURL *oth3 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH3]];
NSURL *oth4 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH4]];
NSURL *oth5 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH5]];
NSURL *oth6 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH6]];
NSURL *oth7 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH7]];
NSURL *oth8 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH8]];
NSURL *oth9 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH9]];
NSURL *oth10 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH10]];
NSURL *oth11 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH11]];
NSURL *oth12 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH12]];
NSURL *oth13 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH13]];
NSURL *oth14 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH14]];
NSURL *oth15 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH15]];
NSURL *oth16 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH16]];
NSURL *oth17 = [NSURL fileURLWithPath:[NSString stringWithFormat:OTH17]];


%hook SBUIController

-(void)_indicateConnectedToPower {

    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.ziph0n.beepbeep.plist"];

    BOOL enabled = [[prefs objectForKey:@"enabled"] boolValue];
    BOOL sound = [[prefs objectForKey:@"sound"] boolValue];
    BOOL custom = [[prefs objectForKey:@"custom"] boolValue];
    BOOL vibration = [[prefs objectForKey:@"vibration"] boolValue];

AVAudioPlayer *audioPlayer;

    if (enabled) {

        if (sound) {

            if (custom) {

                NSInteger integer = [[prefs objectForKey:@"CustomSound"] intValue];
                NSArray *soundURLs = @[pok1, pok2, pok3, pok4, pok5, pok6, pok7, pok8, pok9, pok10, por1, por2, por3, por4, por5, por6, por7, por8, por9, por10, por11, por12, por13, por14, por15, por16, por17, por18, por19, por20, por21, por22, por23, por24, por25, por26, por27, por28, por29, por30, por31, por32, por33, por34, por35, por36, por37, por38, por39, por40, por41, por42, por43, por44, por45, por46, por47, por48, por49, por50, por51, por52, oth1, oth2, oth3, oth4, oth5, oth6, oth7, oth8, oth9, oth10, oth11, oth12, oth13, oth14, oth15, oth16, oth17];

                audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURLs[integer-1] error:nil];
                audioPlayer.numberOfLoops = 0;
                audioPlayer.volume = 1.0;
                [audioPlayer play];

            }

            else if (!custom) {

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