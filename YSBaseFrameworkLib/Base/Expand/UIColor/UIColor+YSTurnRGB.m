//
//  UIColor+YSTurnRGB.m
//  YSFramework
//
//  Created by caihua.wang on 2017/12/4.
//  Copyright © 2017年 wch. All rights reserved.
//

#import "UIColor+YSTurnRGB.h"

@implementation UIColor (YSTurnRGB)

/**
 *  将字符串转换为UIColor,（默认alpha为1）
 */
+(UIColor *)turnStringToRGB:(NSString *)stringColor{
    return [self turnStringToRGB:stringColor alpha:1.0];
}

/**
 *  将字符串转换为UIColor，可指定alpha值
 */
+(UIColor *)turnStringToRGB:(NSString *)stringColor alpha:(CGFloat)alpha{
    NSRange range;
    range.location = 1;
    range.length = 2;
    NSString *rString = [stringColor substringWithRange:range];
    
    range.location = 3;
    NSString *gString = [stringColor substringWithRange:range];
    
    range.location = 5;
    NSString *bString = [stringColor substringWithRange:range];
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    UIColor *color  = [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:alpha];
    
    return color;
}

@end
