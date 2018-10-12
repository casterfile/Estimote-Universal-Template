//
//  ZZAppDelegate.h
//  PayPal-iOS-SDK-Sample-App
//

#import <UIKit/UIKit.h>

@import EstimoteProximitySDK;


@interface ZZAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic, readonly) EPXCloudCredentials *estimoteCloudCredentials;

@end
