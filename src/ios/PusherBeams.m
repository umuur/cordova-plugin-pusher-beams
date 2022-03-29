#import "PusherBeams.h"
@import PushNotifications;

#pragma mark -
#pragma mark PusherBeams

@implementation PusherBeams

static PusherBeams* pusherbeams;

+ (PusherBeams*) pusherbeams {
	return pusherbeams;
}

- (void)pluginInitialize {
	pusherbeams = self;
}

- (void)registerUserId:(CDVInvokedUrlCommand*)command {
    [self.commandDelegate runInBackground:^{
      // if using one instance id throughout the whole app do the following:
      [[PushNotifications shared] startWithInstanceId:@"73f408d7-80a4-4986-a105-7be1f7081dbc"]; // Can be found here: https://dash.pusher.com
      [[PushNotifications shared] registerForRemoteNotifications];

      NSError *anyError;
      [[PushNotifications shared] addDeviceInterestWithInterest:@"debug-test" error:&anyError];
    }];
    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

- (void)clear:(CDVInvokedUrlCommand*)command {
    [self.commandDelegate runInBackground:^{

        [PushNotificationsStatic clearAllStateWithCompletion:^{}];
        CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    }];
}

- (void)registerDeviceToken:(NSData*)deviceToken {
	[[PushNotifications shared] registerDeviceToken:deviceToken];
}

@end

