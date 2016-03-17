//
//  AppDelegate.h
//  GoogleTagManagerDemo
//
//  Created by xuzepei on 16/3/1.
//  Copyright © 2016年 xuzepei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TAGManager;
@class TAGContainer;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) TAGManager *tagManager;
@property (nonatomic, strong) TAGContainer *container;


@end

