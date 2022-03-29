#import "AppDelegate+PusherBeams.h"
#import "PusherBeams.h"

@implementation AppDelegate (PusherBeams)

// A UIApplication delegate
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
  NSLog(@"didRegisterForRemoteNotificationsWithDeviceToken starting");
	[PusherBeams.pusherBeams registerDeviceToken:deviceToken];
	NSLog(@"registerDeviceToken completed");
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
  NSLog(@"Remote notification support is unavailable due to error: %@", error.localizedDescription);
}

@end
