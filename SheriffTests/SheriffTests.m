//
//  SheriffTests.m
//  SheriffTests
//
//  Created by Michael Amaral on 6/18/15.
//  Copyright (c) 2015 Michael Amaral. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "GIBadgeView.h"

static NSTimeInterval const kAnimationTestDelay = 0.3;

@interface SheriffTests : XCTestCase {
    GIBadgeView *_badgeView;
}

@end

@implementation SheriffTests

//- (void)setUp {
//    [super setUp];
//
//    _badgeView = [GIBadgeView new];
//}
//
//- (void)tearDown {
//    _badgeView = nil;
//
//    [super tearDown];
//
//}
//
//- (void)testInit {
//    GIBadgeView *badgeView = [GIBadgeView new];
//
//    XCTAssertNotNil(badgeView);
//    XCTAssertEqual(badgeView.badgeValue, 0);
//    XCTAssertNotNil(badgeView.font);
//    XCTAssertNotNil(badgeView.textColor);
//    XCTAssertEqual(badgeView.topOffset, 0.0f);
//    XCTAssertEqual(badgeView.rightOffset, 0.0f);
//}
//
//- (void)testInitWithCoder {
//    NSCoder *nilCoder = nil;
//    GIBadgeView *badgeView = [[GIBadgeView alloc] initWithCoder:nilCoder];
//
//    XCTAssertNotNil(badgeView);
//    XCTAssertEqual(badgeView.badgeValue, 0);
//    XCTAssertNotNil(badgeView.font);
//    XCTAssertNotNil(badgeView.textColor);
//    XCTAssertEqual(badgeView.topOffset, 0.0f);
//    XCTAssertEqual(badgeView.rightOffset, 0.0f);
//}
//
//- (void)testSetBadgeValue {
//    _badgeView.badgeValue = 5;
//    XCTAssertEqual(_badgeView.badgeValue, 5);
//
//    _badgeView.badgeValue = 22;
//    XCTAssertEqual(_badgeView.badgeValue, 22);
//
//    _badgeView.badgeValue = -12;
//    XCTAssertEqual(_badgeView.badgeValue, 0);
//
//    [_badgeView setBadgeValue:1011];
//    XCTAssertEqual(_badgeView.badgeValue, 1011);
//}
//
//- (void)testIncrement {
//    for (NSInteger i = 0; i < 100; i++) {
//        XCTAssertEqual(_badgeView.badgeValue, i);
//
//        [_badgeView increment];
//    }
//}
//
//- (void)testDecrement {
//    NSInteger startingValue = 95;
//
//    _badgeView.badgeValue = startingValue;
//
//    for (NSInteger i = startingValue; i > -10; --i) {
//        NSInteger expectedValue = (i < 0) ? 0 : i;
//
//        XCTAssertEqual(_badgeView.badgeValue, expectedValue);
//
//        [_badgeView decrement];
//    }
//}
//
//- (void)testVisibility {
//    XCTAssertTrue(_badgeView.hidden);
//
//    XCTestExpectation *expectation = [self expectationWithDescription:@"The expectation should be fulfilled after the delay."];
//
//    [_badgeView increment];
//
//    XCTAssertFalse(_badgeView.hidden);
//
//    [_badgeView decrement];
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, kAnimationTestDelay * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
//        XCTAssertTrue(_badgeView.hidden);
//
//        [expectation fulfill];
//    });
//
//    [self waitForExpectationsWithTimeout:2.0 handler:nil];
//}

@end
