//
//  GCButton.h
//  GCQuickControl
//
//  Created by Ghost on 15-6-13.
//  Copyright (c) 2015年 GhostClock. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GCButton : UIButton

@property(nonatomic,copy) void (^action)(UIButton * button);

@end
