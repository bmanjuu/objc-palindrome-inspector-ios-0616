//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(BOOL)stringIsPalindrome:(NSString *)string{
    
    NSString *noPunctuation = [string copy];
    NSArray *punctuations = @[@",", @".", @"!", @"?", @":", @";"];
    
    for(NSUInteger i = 0; i < [punctuations count]; i++){
        noPunctuation = [noPunctuation stringByReplacingOccurrencesOfString:punctuations[i] withString:@""];
    }
    
    NSString *noSpaces = [noPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [noSpaces lowercaseString];
    //do all modifications to string before reversing it and comparing it to its reverse
    
    NSString *reverse = [self stringByReversingString:lowercase];
    
    return [lowercase isEqualToString:reverse];
}



- (NSString *)stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
}

@end
