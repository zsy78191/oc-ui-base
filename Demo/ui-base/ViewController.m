//
//  ViewController.m
//  ui-base
//
//  Created by 张超 on 2018/12/14.
//  Copyright © 2018 orzer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)ac:(id)sender {
    [self setIconname:@"icon1"];
}

- (void)setIconname:(nullable NSString *)name {
    
    UIApplication *app = [UIApplication sharedApplication];
    //判断系统是否支持切换icon
    if ([app supportsAlternateIcons]) {
        //切换icon
        [app setAlternateIconName:name completionHandler:^(NSError * _Nullable error) {
            if (error) {
                NSLog(@"error==> %@",error.localizedDescription);
            }else{
                NSLog(@"done!!!");
            }
        }];
    }
}


@end
