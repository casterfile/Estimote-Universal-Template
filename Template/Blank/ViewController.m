//
// Please report any problems with this app template to contact@estimote.com
//

#import "ViewController.h"
#import "AppDelegate.h"

@import EstimoteProximitySDK;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // If you want to access the Estimote Cloud credentials from the AppDelegate:
//    EPXCloudCredentials *credentials = ((AppDelegate *) UIApplication.sharedApplication.delegate).estimoteCloudCredentials;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
