#import <Cordova/CDVPlugin.h>
#import "AppDelegate.h"

@interface PusherBeams : CDVPlugin

+ (PusherBeams*) pusherBeams;

- (void)registerUserId:(CDVInvokedUrlCommand*)command;
- (void)clear:(CDVInvokedUrlCommand*)command;

// registerDeviceToken to Apple APNs
- (void)registerDeviceToken: (NSData*)deviceToken;
@end
