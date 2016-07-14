//
//  GIBadgeView.m
//  Sheriff
//
//  Created by Michael Amaral on 6/18/15.
//  Copyright (c) 2015 Gemr, Inc. All rights reserved.
//

#import "GIBadgeView.h"

static CGFloat const kBadgeViewMinimumSize = 20.0;
static CGFloat const kBadgeViewPadding = 5.0;
static CGFloat const kBadgeViewDefaultFontSize = 12.0;

@interface GIBadgeView ()

@property (nonatomic, strong) UILabel *valueLabel;

@end

@implementation GIBadgeView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self commonInit];
    }

    return self;
}

- (instancetype)init {
    if (self = [super init]) {
        [self commonInit];
    }

    return self;
}

- (void)commonInit {
    [self setupDefaultAppearance];
}


#pragma mark - Appearance

- (void)setupDefaultAppearance {
    // Defaults for the view.
    //
    self.clipsToBounds = YES;
    self.hidden = YES;
    self.backgroundColor = [UIColor redColor];

    // Defaults for the label.
    //
    self.valueLabel = [UILabel new];
    self.valueLabel.textAlignment = NSTextAlignmentCenter;
    self.valueLabel.backgroundColor = [UIColor clearColor];
    [self addSubview:self.valueLabel];

    self.textColor = [UIColor whiteColor];
    self.font = [UIFont boldSystemFontOfSize:kBadgeViewDefaultFontSize];
    
    // Defaults for the corner offset
    self.topOffset = 0.0f;
    self.rightOffset = 0.0f;
}

- (void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;

    self.valueLabel.textColor = textColor;
}

- (void)setFont:(UIFont *)font {
    _font = font;

    self.valueLabel.font = font;
}


#pragma mark - Layout

- (void)layoutSubviews {
    [super layoutSubviews];

    [self layoutBadgeSubviews];
}

- (void)layoutBadgeSubviews {
    // Size our label to fit.
    //
    [self.valueLabel sizeToFit];

    // Get the height of the label - which was determined by sizeToFit.
    //
    CGFloat badgeLabelWidth = CGRectGetWidth(self.valueLabel.frame);
    CGFloat badgeLabelHeight = CGRectGetHeight(self.valueLabel.frame);

    // Calculate the height and width we will be based on the label.
    //
    CGFloat height = MAX(kBadgeViewMinimumSize, badgeLabelHeight + kBadgeViewPadding);
    CGFloat width = MAX(height, badgeLabelWidth + (2 * kBadgeViewPadding));

    // Set our frame and corner radius based on those calculations.
    //
    self.frame = CGRectMake(CGRectGetWidth(self.superview.frame) - (width / 2.0) - self.rightOffset, -(height / 2.0) + self.topOffset, width, height);
    self.layer.cornerRadius = height / 2.0;

    // Center the badge label.
    //
    self.valueLabel.frame = CGRectMake((width / 2.0) - (badgeLabelWidth / 2.0), (height / 2.0) - (badgeLabelHeight / 2.0), badgeLabelWidth, badgeLabelHeight);
}


#pragma mark - Updating the badge value

- (void)setBadgeValue:(NSString *)badgeValue {
    _badgeValue = badgeValue;

    self.valueLabel.text = badgeValue;

    // Update our state.
    //
    [self updateState];
}


#pragma mark - State

- (void)updateState {
    // If we're currently hidden and we should be visible, show ourself.
    //
    BOOL isEmpty = [self.badgeValue isEqualToString:@""] || self.badgeValue == nil;
    
    if (self.isHidden && !isEmpty) {
        [self layoutBadgeSubviews];
        [self show];
    }
    
    // Otherwise if we're visible and we shouldn't be, hide ourself.
    //
    else if (!self.isHidden && isEmpty) {
        [self hide];
    }
    
    // Otherwise update the subviews.
    //
    else {
        [self layoutBadgeSubviews];
    }
}


#pragma mark - Visibility

- (void)show {
    self.hidden = NO;
}

- (void)hide {
    self.hidden = YES;
}

@end
