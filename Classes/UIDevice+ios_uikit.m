//
//  UIDevice+ios_uikit.m
//  ios-foundation
//
//  Created by 张超 on 2018/6/5.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import "UIDevice+ios_uikit.h"
//@import YYKit;
#import <LocalAuthentication/LocalAuthentication.h>
@implementation UIDevice (ios_uikit)

- (BOOL)isPad {
    static dispatch_once_t one;
    static BOOL pad;
    dispatch_once(&one, ^{
        pad = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
    });
    return pad;
}

- (void)test
{
    [self isPad];
}

- (BOOL (^)(void))iPad
{
    return ^{
        return [self isPad];
    };
}

- (BOOL (^)(void))biometricsSupported
{
    return ^{
        LAContext * con = [[LAContext alloc]init];
        NSError * error;
        BOOL can = [con canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error];
        return can;
    };
}




@end
