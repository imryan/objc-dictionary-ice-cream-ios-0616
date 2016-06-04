//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    NSDictionary *iceCreams = @{
                                @"Joe"    : @"Peanut Butter and Chocolate",
                                @"Tim"    : @"Natural Vanilla",
                                @"Sophie" : @"Mexican Chocolate",
                                @"Deniz"  : @"Natural Vanilla",
                                @"Tom"    : @"Mexican Chocolate",
                                @"Jim"    : @"Natural Vanilla",
                                @"Mark"   : @"Cookies 'n Cream",
                                };
    
    NSMutableArray *people = [NSMutableArray array];
    for (NSString *person in [iceCreams allKeys]) {
        if ([[iceCreams objectForKey:person] isEqualToString:iceCream]) {
            [people addObject:person];
        }
    }
    
    return people;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *iceCreamCounts = [NSMutableDictionary new];
    
    for (NSString *value in [iceCreamByName allValues]) {
        NSUInteger count = [[self namesForIceCream:value] count];
        [iceCreamCounts setObject:@(count) forKey:value];
    }
    
    return iceCreamCounts;
}

@end
