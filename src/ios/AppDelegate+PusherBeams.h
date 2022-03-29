#import "AppDelegate.h"

@interface AppDelegate (PusherBeams) <UIApplicationDelegate>
- (void)application:(UIApplication*)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken;
- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error;
@end
