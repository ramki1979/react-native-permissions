//
//  RNPMotion.m
//  ReactNativePermissions
//
//  Created by RamaKrishna Mallireddy on 17/08/17.
//  Copyright © 2017 Yonah Forst. All rights reserved.
//

#import "RNPMotion.h"
#import <CoreMotion/CoreMotion.h>

@implementation RNPMotion

+ (void)request:(void (^)(NSString *))completionHandler;
{
    CMMotionActivityManager* motionManager = [[CMMotionActivityManager alloc] init];
    
    NSDate *now = [NSDate date];
    [motionManager queryActivityStartingFromDate:now toDate:now toQueue:[NSOperationQueue mainQueue] withHandler:^(NSArray *activities, NSError *error) {
        [motionManager stopActivityUpdates];
        if (!error) {
            if(error.code == CMErrorMotionActivityNotAuthorized) {
                completionHandler(RNPStatusDenied);
                return;
            }
        }
        completionHandler(RNPStatusAuthorized);
    }];
}

@end
