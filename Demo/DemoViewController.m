//
//  DemoViewController.m
//  Sheriff
//
//  Created by Michael Amaral on 6/18/15.
//  Copyright (c) 2015 Michael Amaral. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"-" style:UIBarButtonItemStylePlain target:self action:@selector(decrement)];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"+" style:UIBarButtonItemStylePlain target:self action:@selector(increment)];

    self.logoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"gemr"]];
    self.logoImageView.clipsToBounds = NO;
    [self.view addSubview:self.logoImageView];

    self.badgeView = [GIBadgeView new];
//    self.badgeView.font = [UIFont fontWithName:@"OpenSans-Semibold" size:18];
//    self.badgeView.backgroundColor = [UIColor colorWithRed:49/255.0 green:69/255.0 blue:122/255.0 alpha:1.0];
//    self.badgeView.topOffset = 20.0f;
//    self.badgeView.rightOffset = 20.0f;
    [self.logoImageView addSubview:self.badgeView];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];

    self.logoImageView.frame = CGRectMake(0, 0, 290, 90);
    self.logoImageView.center = self.view.center;
}


#pragma mark - Actions

//- (void)increment {
//    if ([self.badgeView.badgeValue isEqual: @"5"]) {
//        [self.badgeView setBadgeValue:@"10"];
//    }
//
//    else if ([self.badgeView.badgeValue isEqual: @"15"]) {
//        [self.badgeView setBadgeValue:@"100"];
//    }
//
//    else if ([self.badgeView.badgeValue isEqual: @"105"]) {
//        [self.badgeView setBadgeValue:@"1000"];
//    }
//
//    else if ([self.badgeView.badgeValue isEqual: @"1005"]) {
//        [self.badgeView setBadgeValue:@"10000"];
//    }
//
//    else {
//        [self.badgeView increment];
//    }
//}
//
//- (void)decrement {
//    if (self.badgeView.badgeValue == 10000) {
//        [self.badgeView setBadgeValue:1005];
//    }
//
//    if (self.badgeView.badgeValue == 1000) {
//        [self.badgeView setBadgeValue:105];
//    }
//
//    else if (self.badgeView.badgeValue == 100) {
//        [self.badgeView setBadgeValue:99];
//    }
//
//    else if (self.badgeView.badgeValue == 95) {
//        [self.badgeView setBadgeValue:5];
//    }
//
//    else {
//        [self.badgeView decrement];
//    }
//}

@end
