//
//  SecondScene.m
//  Blank
//
//  Created by tony on 10/10/2018.
//  Copyright © 2018 Estimote, Inc. All rights reserved.
//

#import "SecondScene.h"

@interface SecondScene ()

@end

@implementation SecondScene

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"SecondScene");
    extern NSString *GlobalURL;
    if(GlobalURL != nil){
        NSLog(GlobalURL);
        NSString *urlString = @"https://www.google.com";
        NSURL *url = [NSURL URLWithString:GlobalURL];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
        [_WebBrowser loadRequest:urlRequest];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
