//
// Please report any problems with this app template to contact@estimote.com
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Utils.h"
#import "Content.h"

@import EstimoteProximitySDK;

@interface ViewController ()

@property (strong, nonatomic) EPXProximityObserver *proximityObserver;
@property (strong, nonatomic) NSArray<Content *> *nearbyContent;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    EPXCloudCredentials *estimoteCloudCredentials = [[EPXCloudCredentials alloc] initWithAppID:@"proximity-lvo" appToken:@"600130436ee672c7137ea00be9702eab"];
    
    self.proximityObserver = [[EPXProximityObserver alloc]
                              initWithCredentials:estimoteCloudCredentials
                              onError:^(NSError * _Nonnull error) {
                                  NSLog(@"EPXProximityObserver error: %@", error);
                              }];
    
    EPXProximityZone *zone = [[EPXProximityZone alloc] initWithTag:@"proximity-lvo"
                                                             range:[EPXProximityRange nearRange]];
    
    zone.onContextChange = ^(NSSet<EPXProximityZoneContext *> * _Nonnull contexts) {
        NSMutableArray *nearbyContent = [NSMutableArray arrayWithCapacity:contexts.count];
        
        for (EPXProximityZoneContext *context in contexts) {
            Content *content = [[Content alloc] initWithTitle:context.attachments[@"proximity-lvo/title"] subtitle:context.deviceIdentifier];
            [nearbyContent addObject:content];
        }
        
        self.nearbyContent = nearbyContent;
        NSString *title = self.nearbyContent[0].title;
        NSString *filename = [NSString stringWithFormat:@"%@", [Utils colorForColorName:title]];
        NSLog(filename);
    };
    
    [self.proximityObserver startObservingZones:@[zone]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
