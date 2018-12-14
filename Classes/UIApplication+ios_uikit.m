//
//  UIApplication+ios_uikit.m
//  ios-foundation
//
//  Created by 张超 on 2018/6/5.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import "UIApplication+ios_uikit.h"
@import YYKit;
@import SVProgressHUD;
@implementation UIApplication (ios_uikit)

- (void)test
{
    
}

- (NSURL *(^)(void))doucumentDictionary
{
    return ^{
        return [self documentsURL];
    };
}

- (NSString *(^)(void))bundleName
{
    return ^{
        return [self appBundleName];
    };
}

- (NSString *(^)(void))bundleID
{
    return ^{
        return [self appBundleID];
    };
}

- (NSString *(^)(void))buildVersion
{
    return ^{
        return [self appBuildVersion];
    };
}

- (NSString *(^)(void))version
{
    return ^{
        return [self appVersion];
    };
}

- (NSDate* (^)(void))installedDate
{
    return ^ {
        NSURL* u = UIApplication.sharedApplication.doucumentDictionary();
        NSDictionary*d  = [NSFileManager.defaultManager attributesOfItemAtPath:u.path error:nil];
        return [d valueForKey:@"NSFileCreationDate"];
    };
}

- (void)setHUDStyle
{
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setMaximumDismissTimeInterval:1.0];
    [SVProgressHUD setMinimumSize:CGSizeMake(100, 60)];
}



@end
