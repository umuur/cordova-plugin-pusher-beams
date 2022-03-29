#import "AppDelegate+PusherBeams.h"
#import "PusherBeams.h"

@implementation AppDelegate (PusherBeams)

// A UIApplication delegate
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
		[PusherBeams.pusherBeams registerDeviceToken:deviceToken];
}
