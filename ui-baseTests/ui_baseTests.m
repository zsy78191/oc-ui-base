//
//  ui_baseTests.m
//  ui-baseTests
//
//  Created by 张超 on 2018/12/14.
//  Copyright © 2018 orzer. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIApplication+ios_uikit.h"
@interface ui_baseTests : XCTestCase

@end

@implementation ui_baseTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString* n = [UIApplication sharedApplication].bundleDispalyName();
    NSLog(@"%@",n);
    NSAssert([n isEqualToString:@"BaseTest"], @"");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
