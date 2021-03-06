//
//  UIButton+countDown.m
//  TimeCount
//
//  Created by cq on 16/1/14.
//  Copyright © 2016年 顺苹亓. All rights reserved.
//

#import "UIButton+countDown.h"

@implementation UIButton (countDown)

- (void)startWithTime:(NSInteger)timeline title:(NSString *)title countDownTitle:(NSString *)subTitle mainColor:(UIColor *)mainColor countColor:(UIColor *)color {
    
    __weak typeof(self) weakSelf = self;
    __block NSInteger timeOut=timeline;
    dispatch_queue_t queue=dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer=dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0*NSEC_PER_SEC, 0);
    
    
    dispatch_source_set_event_handler(_timer, ^{
        
        //倒计时结束，关闭
        if (timeOut <= 0) {
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                weakSelf.backgroundColor = mainColor;
                [weakSelf setTitle:title forState:UIControlStateNormal];
                weakSelf.userInteractionEnabled = YES;
            });
        } else {
            int allTime = (int)timeline + 1;
            int seconds = timeOut % allTime;
            NSString *timeStr = [NSString stringWithFormat:@"%0.2d", seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
                weakSelf.backgroundColor = color;
                [weakSelf setTitle:[NSString stringWithFormat:@"%@%@",timeStr,subTitle] forState:UIControlStateNormal];
                weakSelf.userInteractionEnabled = NO;
            });
            timeOut--;
        }
    });
    dispatch_resume(_timer);
    
    
    
}

@end
