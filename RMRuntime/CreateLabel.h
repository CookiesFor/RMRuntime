//
//  CreateLabel.h
//  RMRuntime
//
//  Created by SIMPLE PLAN on 2017/3/13.
//  Copyright © 2017年 SIMPLE PLAN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateLabel : UIView

+(UILabel *)createAttributedStringWithString:(NSString *)titleString withFont:(CGFloat)font withLocation:(NSUInteger)loc withLength:(NSUInteger)len;

@end

