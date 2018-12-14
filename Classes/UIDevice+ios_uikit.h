//
//  UIDevice+ios_uikit.h
//  ios-foundation
//
//  Created by 张超 on 2018/6/5.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN


@interface UIDevice (ios_uikit)

@property (nonatomic, readonly) BOOL (^iPad)(void);
@property (nonatomic, readonly) BOOL (^biometricsSupported)(void);

@end


NS_ASSUME_NONNULL_END
