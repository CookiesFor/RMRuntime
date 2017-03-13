//
//  CreateLabel.m
//  RMRuntime
//
//  Created by SIMPLE PLAN on 2017/3/13.
//  Copyright © 2017年 SIMPLE PLAN. All rights reserved.
//

#import "CreateLabel.h"

@implementation CreateLabel

/**
 * titleString 导航栏title
 * font 字体大小
 * loc 字体颜色开始改变的下标
 * len 字体颜色改变的长度
 **/

+(UILabel *)createAttributedStringWithString:(NSString *)titleString withFont:(CGFloat)font withLocation:(NSUInteger)loc withLength:(NSUInteger)len
{
    
    UILabel * titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 62, 20)] ;
    NSMutableAttributedString *contentStr = [[NSMutableAttributedString alloc]initWithString:titleString];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.font = [UIFont systemFontOfSize:font];
    [contentStr addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(loc, len)];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.attributedText = contentStr;

    return titleLabel;
    
}

@end
