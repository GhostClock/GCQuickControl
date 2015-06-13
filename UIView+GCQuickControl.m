//
//  UIView+GCQuickControl.m
//  GCQuickControl
//
//  Created by Ghost on 15-6-13.
//  Copyright (c) 2015年 GhostClock. All rights reserved.
//

#import "UIView+GCQuickControl.h"

#import "GCButton.h"

@implementation UIView (ZJQuickControl)

//添加一个标签
-(UILabel *)addLabelWithFrem:(CGRect)frame text:(NSString *)text{
    UILabel * label = [[UILabel alloc]initWithFrame:frame];
    label.text = text;
    [self addSubview:label];
    return label;
}

//添加一个系统的按钮
-(UIButton *)addSystemButtonWithFrame:(CGRect)frame title:(NSString *)title action:(void (^) (UIButton * button))action{
    GCButton * button = [GCButton buttonWithType:UIButtonTypeSystem];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    button.action = action;
    [self addSubview:button];
    return button;
}

//添加图片按钮
-(UIButton *)addImageButtonWithFrame:(CGRect)frame title:(NSString *)title background:(NSString *)background action:(void (^)(UIButton * button))action{
    GCButton * button = [GCButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:background] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.action = action;
    [self addSubview:button];
    return button;
}

//添加图片视图
-(UIImageView *)addImageViewWithFrame:(CGRect)frame image:(NSString *)image{
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:frame];
    imageView.image = [UIImage imageNamed:image];
    imageView.userInteractionEnabled = YES;
    [self addSubview:imageView];
    return imageView;
}

@end
