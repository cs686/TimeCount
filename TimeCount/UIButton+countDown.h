//
//  UIButton+countDown.h
//  TimeCount
//
//  Created by cq on 16/1/14.
//  Copyright © 2016年 顺苹亓. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (countDown)
/**
 *  倒计时按钮
 *
 *  @param timeline  倒计时时间
 *  @param title     没有倒计时时候的名字
 *  @param subTitle  倒计时名字
 *  @param mainColor 没倒计时颜色
 *  @param color     倒计时时候的颜色
 */

- (void)startWithTime:(NSInteger)timeline title:(NSString *)title countDownTitle:(NSString *)subTitle mainColor:(UIColor*)mainColor countColor:(UIColor *)color;

@end
