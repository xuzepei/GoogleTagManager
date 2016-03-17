//
//  ViewController.m
//  GoogleTagManagerDemo
//
//  Created by xuzepei on 16/3/1.
//  Copyright © 2016年 xuzepei. All rights reserved.
//

#import "ViewController.h"
#import "TAGDataLayer.h"
#import "TAGManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickedButton:(id)sender {
    
    //Push data will trigger the function if any custom tag's rule(s) evalute to true
    TAGDataLayer *dataLayer = [TAGManager instance].dataLayer;
    [dataLayer push:@{@"event": @"openScreen", @"screenName": @"Home Screen"}];
}

@end
