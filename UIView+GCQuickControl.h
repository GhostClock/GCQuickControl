//
//  UIView+GCQuickControl.h
//  GCQuickControl
//
//  Created by Ghost on 15-6-13.
//  Copyright (c) 2015年 GhostClock. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface  UIView (GCQuickControl)

//添加一个标签
-(UILabel *)addLabelWithFrem:(CGRect)frame text:(NSString *)text;

//添加一个系统的按钮
-(UIButton *)addSystemButtonWithFrame:(CGRect)frame title:(NSString *)title action:(void (^) (UIButton * button))action;

//添加图片按钮
-(UIButton *)addImageButtonWithFrame:(CGRect)frame title:(NSString *)title background:(NSString *)background action:(void (^)(UIButton * button))action;

//添加图片视图
-(UIImageView *)addImageViewWithFrame:(CGRect)frame image:(NSString *)image;

@end



































