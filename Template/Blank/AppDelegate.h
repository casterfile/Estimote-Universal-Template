//
// Please report any problems with this app template to contact@estimote.com
//

#import <UIKit/UIKit.h>

@import EstimoteProximitySDK;


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic, readonly) EPXCloudCredentials *estimoteCloudCredentials;

@end
