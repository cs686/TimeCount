//
//  ViewController.m
//  TimeCount
//
//  Created by cq on 16/1/14.
//  Copyright © 2016年 顺苹亓. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+countDown.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *countDownBtn;

@end

@implementation ViewController
- (IBAction)countDownBtnTapped:(UIButton *)sender {
    
    [_countDownBtn startWithTime:5 title:@"获取验证码" countDownTitle:@"s" mainColor:[UIColor colorWithRed:84/255.0 green:180/255.0 blue:98/255.0 alpha:1.0f] countColor:[UIColor colorWithRed:84/255.0 green:180/255.0 blue:98/255.0 alpha:1.0f]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
