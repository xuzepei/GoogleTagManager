//
//  MyFunctionCallTagHandler.h
//  GoogleTagManagerDemo
//
//  Created by xuzepei on 16/3/2.
//  Copyright © 2016年 xuzepei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TAGContainer.h"

// Corresponds to the function name field in the Google Tag Manager interface.
#define kMyTagFunctionName @"MyTagFunction"

@interface MyFunctionCallTagHandler : NSObject<TAGFunctionCallTagHandler>

@end
