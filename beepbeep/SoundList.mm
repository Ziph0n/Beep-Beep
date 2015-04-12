#import <Preferences/Preferences.h>
#import <AVFoundation/AVAudioPlayer.h>

@interface SoundList: PSListController {
}
@end

@implementation SoundList
- (id)specifiers {
        if(_specifiers == nil) {
                _specifiers = [[self loadSpecifiersFromPlistName:@"SoundList" target:self] retain];
        }
        return _specifiers;
}

@end


@interface CustomListItemsController : PSListItemsController
@end

AVAudioPlayer *audioPlayer;

@implementation CustomListItemsController


-(void)stopAudio{

    if(audioPlayer && [audioPlayer isPlaying]) {
        [audioPlayer stop];
        audioPlayer=nil;
    }
}


- (void)preview:(id)arg1
{
    [self stopAudio];

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


    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.ziph0n.beepbeep.plist"];

    switch ([[prefs objectForKey:@"CustomSound"] intValue]) {

        case 1: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:pok1 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 2: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:pok2 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 3: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:pok3 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 4: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:pok4 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 5: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:pok5 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 6: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:pok6 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 7: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:pok7 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 8: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:pok8 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 9: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:pok9 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 10: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:pok10 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 11: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por1 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 12: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por2 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 13: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por3 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 14: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por4 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 15: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por5 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 16: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por6 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 17: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por7 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 18: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por8 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 19: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por9 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 20: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por10 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 21: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por11 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 22: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por12 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 23: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por13 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 24: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por14 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 25: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por15 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 26: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por16 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 27: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por17 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 28: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por18 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 29: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por19 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 30: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por20 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 31: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por21 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 32: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por22 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 33: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por23 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 34: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por24 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 35: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por25 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 36: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por26 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 37: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por27 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 38: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por28 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 39: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por29 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 40: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por30 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 41: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por31 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 42: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por32 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 43: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por33 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 44: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por34 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 45: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por35 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 46: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por36 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 47: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por37 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 48: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por38 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 49: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por39 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 50: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por40 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 51: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por41 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 52: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por42 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 53: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por43 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 54: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por44 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 55: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por45 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 56: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por46 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 57: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por47 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 58: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por48 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 59: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por49 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 60: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por50 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 61: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por51 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 62: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:por52 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 63: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth1 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 64: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth2 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 65: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth3 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 66: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth4 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 67: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth5 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 68: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth6 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 69: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth7 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 70: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth8 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 71: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth9 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 72: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth10 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 73: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth11 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 74: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth12 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 75: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth13 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 76: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth14 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 77: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth15 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 78: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth16 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

        case 79: {
          audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oth17 error:nil];
          audioPlayer.numberOfLoops = 0;
          audioPlayer.volume = 1.0;
          [audioPlayer play];
        break;
        }

    }
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