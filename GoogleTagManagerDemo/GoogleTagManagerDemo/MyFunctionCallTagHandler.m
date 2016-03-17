//
//  MyFunctionCallTagHandler.m
//  GoogleTagManagerDemo
//
//  Created by xuzepei on 16/3/2.
//  Copyright © 2016年 xuzepei. All rights reserved.
//

#import "MyFunctionCallTagHandler.h"

@implementation MyFunctionCallTagHandler

/**
 * This method will be called when any custom tag's rule(s) evalute to true and
 * should check the functionName and process accordingly.
 *
 * @param functionName corresponds to the function name field, not tag
 *     name field, defined in the Google Tag Manager web interface.
 * @param parameters An optional map of parameters as defined in the Google
 *     Tag Manager web interface.
 */
- (void)execute:(NSString *)functionName parameters:(NSDictionary *)parameters {
    
    if ([functionName isEqualToString:kMyTagFunctionName]) {
        // Process accordingly.
        
        NSLog(@"parameters:%@",parameters);
    }
}

@end
