//
//  PSCircleConfigration.m
//  CircleProgressView
//
//  Created by SGJ on 2021/3/17.
//  Copyright © 2021 SGJ. All rights reserved.
//

#import "PSCircleConfigration.h"

@implementation PSCircleConfigration

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _backgroundColor = [UIColor redColor];
        _fillColor = [UIColor blueColor];
        _lineWidth = 5.0f;
//        _isReverseCircle = YES;
    }
    return self;
}

+ (instancetype)defaultConfig
{
    return [[self alloc] init];
}

@end
