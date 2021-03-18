//
//  PSCircleProgressView.m
//  CircleProgressView
//
//  Created by SGJ on 2021/3/17.
//  Copyright © 2021 SGJ. All rights reserved.
//

#import "PSCircleProgressView.h"

@interface PSCircleProgressView ()
{
    CAShapeLayer *backGroundLayer;      //背景图层
    CAShapeLayer *frontFillLayer;       //用来填充的图层
    UIBezierPath *backGroundBezierPath; //背景贝赛尔曲线
    UIBezierPath *frontFillBezierPath;  //用来填充的贝赛尔曲线
}
@property (nonatomic, strong) PSCircleConfigration *configration;

@end

@implementation PSCircleProgressView
@synthesize progressValue = _progressValue;

- (instancetype)initWithFrame:(CGRect)frame withConfig:(PSCircleConfigration *)config
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _configration = config;
        [self createUIComponments];
    }
    return self;
}

#pragma mark -初始化布局
- (void)createUIComponments
{
    //创建背景图层
    backGroundLayer = [CAShapeLayer layer];
    backGroundLayer.fillColor = nil;

    //创建填充图层
    frontFillLayer = [CAShapeLayer layer];
    frontFillLayer.fillColor = nil;

    
    [self.layer addSublayer:backGroundLayer];
    [self.layer addSublayer:frontFillLayer];
    
    //设置颜色
    backGroundLayer.strokeColor = _configration.backgroundColor.CGColor;
    frontFillLayer.strokeColor = _configration.fillColor.CGColor;
}

-(void)layoutSubviews {

    [super layoutSubviews];
    
    CGFloat width = self.bounds.size.width;
    backGroundLayer.frame = self.bounds;


    backGroundBezierPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width/2.0f, width/2.0f) radius:(CGRectGetWidth(self.bounds)-2.0)/2.f startAngle:0 endAngle:M_PI*2
                                                       clockwise:YES];
    backGroundLayer.path = backGroundBezierPath.CGPath;
    
    
    frontFillLayer.frame = self.bounds;

    //设置线宽
    frontFillLayer.lineWidth = _configration.lineWidth;
    backGroundLayer.lineWidth = _configration.lineWidth;
}

- (void)setProgressValue:(CGFloat)progressValue
{
    progressValue = MAX( MIN(progressValue, 1.0), 0.0);
    _progressValue = progressValue;
    
    if (progressValue != 0)
    {
        if (progressValue == 1) {
            
            if ([self.delegate respondsToSelector:@selector(progressViewOver:)]) {
                
                [self.delegate progressViewOver:self];
            }
            CGFloat width = self.bounds.size.width;
            //顺时针
//            if (_configration.isReverseCircle)
//            {
                //逆时针
                frontFillBezierPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width/2.0f, width/2.0f) radius:(CGRectGetWidth(self.bounds)-2.0)/2.f startAngle:-0.25*2*M_PI endAngle: - 0.25*2*M_PI - (2*M_PI)*progressValue clockwise:NO];
                
//            }
//            else
//            {
//                //顺时针
//                frontFillBezierPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width/2.0f, width/2.0f) radius:(CGRectGetWidth(self.bounds)-2.0)/2.f startAngle:-0.25*2*M_PI endAngle:(2*M_PI)*progressValue - 0.25*2*M_PI clockwise:NO];
//            }
            
            frontFillLayer.path = frontFillBezierPath.CGPath;
            return;
        }
        
        CGFloat width = self.bounds.size.width;
//        if (_configration.isReverseCircle)
//        {
//            //逆时针
            frontFillBezierPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width/2.0f, width/2.0f) radius:(CGRectGetWidth(self.bounds)-2.0)/2.f startAngle:-0.25*2*M_PI endAngle: - 0.25*2*M_PI - (2*M_PI)*progressValue clockwise:NO];
//        }
//        else
//        {
//            //顺时针
//            frontFillBezierPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width/2.0f, width/2.0f) radius:(CGRectGetWidth(self.bounds)-2.0)/2.f startAngle:-0.25*2*M_PI endAngle:(2*M_PI)*progressValue - 0.25*2*M_PI clockwise:NO];
//        }
        
        frontFillLayer.path = frontFillBezierPath.CGPath;
        
//        backGroundLayer.strokeColor = _configration.backgroundColor.CGColor;
    }
}

- (CGFloat)progressValue
{
    return _progressValue;
}

@end
