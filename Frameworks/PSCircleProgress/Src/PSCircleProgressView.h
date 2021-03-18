//
//  PSCircleProgressView.h
//  CircleProgressView
//
//  Created by SGJ on 2021/3/17.
//  Copyright © 2021 SGJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSCircleConfigration.h"

NS_ASSUME_NONNULL_BEGIN

@class PSCircleProgressView;

@protocol PSCircleProgressViewDelegate <NSObject>

-(void)progressViewOver:(PSCircleProgressView *)progressView;

@end


@interface PSCircleProgressView : UIView

- (instancetype)initWithFrame:(CGRect)frame withConfig:(PSCircleConfigration *)config;

//进度值0-1.0之间
@property (nonatomic,assign)CGFloat progressValue;

//value等于1的时候的代理
@property(nonatomic,weak)id<PSCircleProgressViewDelegate>delegate;


@end

NS_ASSUME_NONNULL_END
