#import "AppDelegate+PusherBeams.h"
#import "PusherBeams.h"
@import PushNotifications;


@implementation AppDelegate (PusherBeams)

// A UIApplication delegate
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    [[PushNotifications shared] registerDeviceToken:deviceToken];
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    [[PushNotifications shared] handleNotificationWithUserInfo:userInfo];
    NSLog(@"%@", userInfo);
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
  NSLog(@"Remote notification support is unavailable due to error: %@", error.localizedDescription);
}

@end
