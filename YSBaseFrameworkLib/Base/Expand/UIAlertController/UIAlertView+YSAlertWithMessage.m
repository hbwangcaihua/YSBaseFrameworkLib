//
//  UIAlertView+YSAlertWithMessage.m
//  YSFramework
//
//  Created by caihua.wang on 2017/12/4.
//  Copyright © 2017年 wch. All rights reserved.
//

#import "UIAlertView+YSAlertWithMessage.h"

@implementation UIAlertView (YSAlertWithMessage)

/**
 *  直接显示弹窗消息，无回调，无按钮设置等
 *  @param message 要显示的消息
 */
+(void)alertViewWithMessage:(NSString *)message{
    UIAlertView *tmpAlertView=[[UIAlertView alloc]initWithTitle:@"提示" message:message delegate:nil cancelButtonTitle:@"好" otherButtonTitles:nil, nil];
    [tmpAlertView show];
}

+(void)alertViewWithTitle:(NSString *)Title Message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles{
    UIAlertView *tmpAlertView=[[UIAlertView alloc]initWithTitle:Title message:message delegate:nil cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil];
    [tmpAlertView show];
}

@end
