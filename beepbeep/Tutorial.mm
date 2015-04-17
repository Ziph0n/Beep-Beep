#import <Preferences/Preferences.h>

@interface Tutorial: PSListController {
}
@end

@implementation Tutorial
- (id)specifiers {
        if(_specifiers == nil) {
                _specifiers = [[self loadSpecifiersFromPlistName:@"Tutorial" target:self] retain];
        }
        return _specifiers;
}

@end

// vim:ft=objc