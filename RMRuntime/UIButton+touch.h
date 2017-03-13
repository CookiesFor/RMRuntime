//
//  UIButton+touch.h
//  RMRuntime
//
//  Created by SIMPLE PLAN on 17/3/13.
//  Copyright © 2017年 SIMPLE PLAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#define defaultInterval .7// 默认间隔时间
@interface UIButton (touch)
/**
 *  设置点击时间间隔
 */
@property (nonatomic, assign) NSTimeInterval timeInterVal;
@end
