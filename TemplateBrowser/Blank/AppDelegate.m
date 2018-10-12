//
// Please report any problems with this app template to contact@estimote.com
//

#import "AppDelegate.h"

@import UserNotifications;
@import EstimoteProximitySDK;

@interface AppDelegate () <UNUserNotificationCenterDelegate>

@property(strong, nonatomic) EPXProximityObserver *proximityObserver;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UNUserNotificationCenter *notificationCenter = [UNUserNotificationCenter currentNotificationCenter];
    notificationCenter.delegate = self;
    [notificationCenter requestAuthorizationWithOptions:UNAuthorizationOptionAlert | UNAuthorizationOptionSound
                                      completionHandler:^(BOOL granted, NSError *_Nullable error) {
                                          NSLog(@"notifications permission granted = %d, error = %@", granted, error);
                                      }];
    
    
    
    EPXCloudCredentials *estimoteCloudCredentials = [[EPXCloudCredentials alloc] initWithAppID:@"proximity-lvo" appToken:@"600130436ee672c7137ea00be9702eab"];
    
    self.proximityObserver = [[EPXProximityObserver alloc] initWithCredentials:estimoteCloudCredentials
                                                                       onError:^(NSError *_Nonnull error) {
                                                                           NSLog(@"EPXProximityObserver error: %@", error);
                                                                       }];
    
    EPXProximityZone *zone = [[EPXProximityZone alloc] initWithTag:@"proximity-lvo" range:[EPXProximityRange nearRange]];//notification-a58
    
    zone.onEnter = ^(EPXProximityZoneContext *context) {
        NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        // or @"yyyy-MM-dd hh:mm:ss a" if you prefer the time with AM/PM
        NSLog(@"%@",[dateFormatter stringFromDate:[NSDate date]]);
        
        
        UNMutableNotificationContent *content = [UNMutableNotificationContent new];
        content.title = [NSString stringWithFormat:@"Hello %@ ",[dateFormatter stringFromDate:[NSDate date]]];
        content.body = @"You're near your tag";
        content.sound = [UNNotificationSound defaultSound];
        UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:@"enter" content:content trigger:nil];
        [notificationCenter addNotificationRequest:request withCompletionHandler:nil];
        
    };
    zone.onExit = ^(EPXProximityZoneContext *context) {
        NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        // or @"yyyy-MM-dd hh:mm:ss a" if you prefer the time with AM/PM
        NSLog(@"%@",[dateFormatter stringFromDate:[NSDate date]]);
        
        
        UNMutableNotificationContent *content = [UNMutableNotificationContent new];
        content.title = [NSString stringWithFormat:@"Hello %@ ",[dateFormatter stringFromDate:[NSDate date]]];;
        content.body = @"You've left the proximity of your tag";
        content.sound = [UNNotificationSound defaultSound];
        UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:@"exit" content:content trigger:nil];
        [notificationCenter addNotificationRequest:request withCompletionHandler:nil];
        
    };
    
    [self.proximityObserver startObservingZones:@[ zone ]];
    
    return YES;
}

// Needs to be implemented to receive notifications both in foreground and background
- (void)userNotificationCenter:(UNUserNotificationCenter *)center
       willPresentNotification:(UNNotification *)notification
         withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler {
    completionHandler(UNNotificationPresentationOptionAlert | UNNotificationPresentationOptionSound);
}

@end
