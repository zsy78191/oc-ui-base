//
//  UIViewController+ios_uikit.m
//  ios-foundation
//
//  Created by 张超 on 2018/6/6.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import "UIViewController+ios_uikit.h"
@import SVProgressHUD;
#import "UIAlertController+Functional.h"
#import "UIDevice+ios_uikit.h"
@import YYKit;
@implementation UIViewController (ios_uikit)

- (void)test
{
    
}

- (UIAlertController*)alert:(UIAlertController*)alert
        title:(NSString*)title
    recommend:(NSString*)recommend
       action:(NSString*)action
       cancel:(NSString*)cancel
        block:(void(^)(NSInteger idx, __kindof UIViewController* vc))block
{
    __weak typeof(self) weakSelf = self;
    return alert
    .titled(title)
    .recommend(recommend, ^(UIAlertAction * _Nonnull action, UIAlertController * _Nonnull alert) {
        if (block) {
            block(2,weakSelf);
        }
    })
    .action(action, ^(UIAlertAction * _Nonnull action, UIAlertController * _Nonnull alert) {
        if (block) {
            block(1,weakSelf);
        }
    })
    .cancel(cancel, ^(UIAlertAction * _Nonnull action) {
        if (block) {
            block(0,weakSelf);
        }
    });
}

- (UIAlertController*)alert:(NSString*)title
    recommend:(NSString*)recommend
       action:(NSString*)action
       cancel:(NSString*)cancel
        block:(void(^)(NSInteger idx, __kindof UIViewController* vc))block
{
   return [self alert:UI_Alert() title:title recommend:recommend action:action cancel:cancel block:block];
}

- (UIAlertController*)actionsheet:(NSString*)title
    recommend:(NSString*)recommend
       action:(NSString*)action
       cancel:(NSString*)cancel
        block:(void(^)(NSInteger idx, __kindof UIViewController* vc))block
{
   return [self alert:UI_ActionSheet() title:title recommend:recommend action:action cancel:cancel block:block];
}

- (void)showAsProver:(UIAlertController *)controller
                view:(__kindof UIView *)sourceView
                rect:(CGRect)sourceRect
               arrow:(UIPopoverArrowDirection)arrow
{
    controller.showAsProver(self,
                            UIModalTransitionStyleFlipHorizontal, sourceView, sourceRect, arrow);
}

- (void)hudInfo:(NSString *)message
{
    dispatch_async_on_main_queue(^{
        [SVProgressHUD showInfoWithStatus:message];
    });
}

- (void)hudSuccess:(NSString *)message
{
    dispatch_async_on_main_queue(^{
        [SVProgressHUD showSuccessWithStatus:message];
    });
}

- (void)hudFail:(NSString *)message
{
    dispatch_async_on_main_queue(^{
        [SVProgressHUD showErrorWithStatus:message];
    });
}

- (void)hudProgress:(float)progress
{
    dispatch_async_on_main_queue(^{
        [SVProgressHUD showProgress:progress];
    });
}

- (void)hudWait:(NSString *)message
{
    dispatch_async_on_main_queue(^{
        [SVProgressHUD showWithStatus:message];
    });
}

@end
