#import "AppDelegate.h"

@interface AppDelegate (PusherBeams)
+ (AppDelegate *_Nonnull) instance;
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken;
- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error;
@end
