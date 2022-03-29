#import <Cordova/CDVPlugin.h>
#import "AppDelegate.h"

@interface PusherBeams : CDVPlugin

- (void)registerUserId:(CDVInvokedUrlCommand*)command;
- (void)clear:(CDVInvokedUrlCommand*)command;

@end
