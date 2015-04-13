//
//  AppDelegate.m
//  numberProblems
//
//  Created by Sarah on 4/8/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


int multiple = 8;
float divisor = 6.0;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self iterateCount:4];
    
    
    return YES;
}


    
- (void)iterateCount:(int)someValue  {
    
    int multiplyValue = [self multiplied:someValue];
    NSLog(@"Muliplied %i by %i to be %i", someValue, multiple, multiplyValue);
    
    float dividedValue = [self divided:multiplyValue];
    NSLog(@"Divided %i by %f to be %f", multiplyValue, divisor, dividedValue);
    
    while (someValue >= 0) {
        NSLog(@"Iterate %i", someValue);
        someValue--;
    }
    
    }

    
- (int)multiplied:(int)someValue   {
    int newMultipliedValue = someValue * multiple;
    return newMultipliedValue;
    
}

- (int)divided:(float)someValue  {
    float newDividedValue = someValue / divisor;
    return newDividedValue;
    
}
    /*The goal is to get "Divided [integer] to be [divided]" such that divided is a floating point value rather than a rounded integer. For example, 16 / 6 = 2.6666667. When iterateCount prints divided it should be a floating point value. The others should not.
    Go back through the multiplied and divided methods and update them so that the iterateCount method can print a floating point answer.*/
    
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
