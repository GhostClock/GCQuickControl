//
//  GCButton.m
//  GCQuickControl
//
//  Created by Ghost on 15-6-13.
//  Copyright (c) 2015年 GhostClock. All rights reserved.
//

#import "GCButton.h"

@implementation GCButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

-(void)buttonClick:(UIButton *)button{
    if (self.action) {
        self.action(self);
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
