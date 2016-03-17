//
//  MyFunctionCallMacroHandler.m
//  GoogleTagManagerDemo
//
//  Created by xuzepei on 16/3/2.
//  Copyright © 2016年 xuzepei. All rights reserved.
//

#import "MyFunctionCallMacroHandler.h"

@implementation MyFunctionCallMacroHandler

- (id)valueForMacro:(NSString *)functionName parameters:(NSDictionary *)parameters {
    
    if ([functionName isEqualToString:kMyMacroFunctionName]) {
        // Process and return the calculated value of this macro accordingly.
        return parameters;
    }
    return nil;
}

@end
