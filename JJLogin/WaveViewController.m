//
//  WaveViewController.m
//  JJLogin
//
//  Created by admin on 2019/7/29.
//  Copyright © 2019 JJ. All rights reserved.
//

#import "WaveViewController.h"
#import "JJWave.h"

@interface WaveViewController ()
@property (nonatomic, strong) JJWave *headerView;
@property (nonatomic, strong) UIImageView *iconImageView;

@end

@implementation WaveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.headerView];

}

- (UIImageView *)iconImageView{
    
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.headerView.frame.size.width/2-30, 0, 60, 60)];
        _iconImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        _iconImageView.layer.borderWidth = 2;
        _iconImageView.layer.cornerRadius = 20;
    }
    return _iconImageView;
}


- (JJWave *)headerView{
    
    if (!_headerView) {
        _headerView = [[JJWave alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 200)];
        _headerView.backgroundColor = XNColor(248, 64, 87, 1);
        _headerView.waveHeight = 8;
        [_headerView addSubview:self.iconImageView];
        __weak typeof(self)weakSelf = self;
        _headerView.waveBlock = ^(CGFloat currentY){
            CGRect iconFrame = [weakSelf.iconImageView frame];
            iconFrame.origin.y = CGRectGetHeight(weakSelf.headerView.frame)-CGRectGetHeight(weakSelf.iconImageView.frame)+currentY-weakSelf.headerView.waveHeight;
            weakSelf.iconImageView.frame = iconFrame;
        };
        [_headerView startWaveAnimation];
    }
    return _headerView;
}

@end
