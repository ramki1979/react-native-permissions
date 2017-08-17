//
//  RNPMotion.h
//  ReactNativePermissions
//
//  Created by RamaKrishna Mallireddy on 17/08/17.
//  Copyright © 2017 Yonah Forst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RCTConvert+RNPStatus.h"

@interface RNPMotion : NSObject

+ (void)request:(NSString *)type completionHandler:(void (^)(NSString *))completionHandler;

@end
