//
//  ViewController.m
//  JJLogin
//
//  Created by admin on 2019/7/29.
//  Copyright © 2019 JJ. All rights reserved.
//

#import "ViewController.h"
#import "JJLoginButton.h"

@interface ViewController ()
@property (nonatomic, strong) JJLoginButton *loginButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loginButton = [[JJLoginButton alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    self.loginButton.center = CGPointMake(CGRectGetMidX(self.view.frame), 200);
    self.loginButton.backColor = [UIColor colorWithRed:47 / 255. green:129 / 255. blue:215 / 255. alpha:1.0];
    self.loginButton.clickColor = [UIColor grayColor];
    self.loginButton.title = @"登录";
    self.loginButton.duration = 1.3;
    [self.view addSubview:self.loginButton];
    
    [self.loginButton addTarget:self action:@selector(loginButtonAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)loginButtonAction:(JJLoginButton *)button {
    //模拟耗时操作，比如请求登录接口，或存储登录信息
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.loginButton stopAnimation];
    });
}

- (IBAction)touchUpStopBtn:(UIButton *)sender {
    [self.loginButton stopAnimation];

}

- (IBAction)touchUpRegistBtn:(UIButton *)sender {
       [self.loginButton resetStatus];
}
@end
