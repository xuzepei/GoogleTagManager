//
//  AppDelegate.m
//  GoogleTagManagerDemo
//
//  Created by xuzepei on 16/3/1.
//  Copyright © 2016年 xuzepei. All rights reserved.
//

#import "AppDelegate.h"
#import "TAGContainer.h"
#import "TAGContainerOpener.h"
#import "TAGManager.h"
#import "MyFunctionCallMacroHandler.h"
#import "MyFunctionCallTagHandler.h"

@interface AppDelegate ()<TAGContainerOpenerNotifier>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.tagManager = [TAGManager instance];
    [self.tagManager.logger setLogLevel:kTAGLoggerLogLevelVerbose];
    
    /*
     * Opens a container.
     *
     * @param containerId The ID of the container to load.
     * @param tagManager The TAGManager instance for getting the container.
     * @param openType The choice of how to open the container.
     * @param timeout The timeout period (default is 2.0 seconds).
     * @param notifier The notifier to inform on container load events.
     */
    [TAGContainerOpener openContainerWithId:@"GTM-PG7WXD"   // Update with your Container ID.
                                 tagManager:self.tagManager
                                   openType:kTAGOpenTypePreferFresh
                                    timeout:nil
                                   notifier:self];
    
    return YES;
}

// TAGContainerOpenerNotifier callback.
- (void)containerAvailable:(TAGContainer *)container {
    // Note that containerAvailable may be called on any thread, so you may need to dispatch back to
    // your main thread.
    dispatch_async(dispatch_get_main_queue(), ^{
        self.container = container;
        
        [self.container refresh];
        
        [self.container registerFunctionCallMacroHandler:[[MyFunctionCallMacroHandler alloc] init]
                                                forMacro:kMyMacroFunctionName];
        
        [self.container registerFunctionCallTagHandler:[[MyFunctionCallTagHandler alloc] init]
                                                forTag:kMyTagFunctionName];
        
        // Get the configuration value by key.
        NSString *myvalue = [container stringForKey:@"a"];
        
        NSLog(@"My value is %@!",myvalue);
        
        
    });
}

- (void)containerRefreshSuccess:(TAGContainer *)container
                    refreshType:(TAGContainerCallbackRefreshType)refreshType
{
    NSLog(@"containerRefreshSuccess");
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
