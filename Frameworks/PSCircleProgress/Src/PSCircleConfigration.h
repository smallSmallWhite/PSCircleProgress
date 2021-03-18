//
//  PSCircleConfigration.h
//  CircleProgressView
//
//  Created by SGJ on 2021/3/17.
//  Copyright © 2021 SGJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PSCircleConfigration : NSObject

//圆环的背景颜色 默认颜色为红色
@property (nonatomic, strong) UIColor *backgroundColor;
//圆环进度条走过的颜色 默认颜色为灰色
@property (nonatomic, strong) UIColor *fillColor;
//圆环的宽度 默认宽度为5.0f 外部调用可修改
@property (nonatomic, assign) CGFloat lineWidth;
////圆环的旋转方向是逆时针还是顺时针 默认是逆时针
//@property (nonatomic, assign) BOOL isReverseCircle;

+ (instancetype)new UNAVAILABLE_ATTRIBUTE;

+ (instancetype)init UNAVAILABLE_ATTRIBUTE;

+ (instancetype)defaultConfig;

@end

NS_ASSUME_NONNULL_END
