//
//  UIApplication+ios_uikit.h
//  ios-foundation
//
//  Created by 张超 on 2018/6/5.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (ios_uikit)
{
    
}
@property (nonatomic, readonly) NSURL* (^doucumentDictionary)(void);

/// Application's Bundle Name (show in SpringBoard).
@property (nullable, nonatomic, readonly) NSString * (^bundleName)(void);

/// Application's Bundle ID.  e.g. "com.ibireme.MyApp"
@property (nullable, nonatomic, readonly) NSString * (^bundleID)(void);

/// Application's Version.  e.g. "1.2.0"
@property (nullable, nonatomic, readonly) NSString * (^version)(void);

/// Application's Build number. e.g. "123"
@property (nullable, nonatomic, readonly) NSString * (^buildVersion)(void);

@property (nullable, nonatomic, readonly) NSDate * (^installedDate)(void);


- (void)setHUDStyle;

@end

NS_ASSUME_NONNULL_END
