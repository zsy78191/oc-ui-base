//
//  UIViewController+ios_uikit.h
//  ios-foundation
//
//  Created by 张超 on 2018/6/6.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface UIViewController (ios_uikit)
{
    
}

- (UIAlertController*)alert:(NSString*)title
    recommend:(NSString*)recommend
       action:(NSString*)action
       cancel:(NSString*)cancel
        block:(void(^)(NSInteger idx, __kindof UIViewController* vc))block;

- (UIAlertController*)actionsheet:(NSString*)title
          recommend:(NSString*)recommend
             action:(NSString*)action
             cancel:(NSString*)cancel
              block:(void(^)(NSInteger idx, __kindof UIViewController* vc))block;

- (void)showAsProver:(UIAlertController*)controller
                view:(__kindof UIView* )sourceView
                rect:(CGRect) sourceRect
               arrow:(UIPopoverArrowDirection) arrow;


- (void)hudInfo:(NSString*)message;
- (void)hudSuccess:(NSString*)message;
- (void)hudFail:(NSString*)message;
- (void)hudProgress:(float)progress;
- (void)hudWait:(NSString*)message;

@end
