//
//  JJWave.h
//  JJLogin
//
//  Created by admin on 2019/7/29.
//  Copyright © 2019 JJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#define XNColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
typedef void(^JJWaveBlock)(CGFloat currentY);

NS_ASSUME_NONNULL_BEGIN

@interface JJWave : UIView
/**
 *  浪弯曲度
 */
@property (nonatomic, assign) CGFloat waveCurvature;
/**
 *  浪速
 */
@property (nonatomic, assign) CGFloat waveSpeed;
/**
 *  浪高
 */
@property (nonatomic, assign) CGFloat waveHeight;
/**
 *  实浪颜色
 */
@property (nonatomic, strong) UIColor *realWaveColor;
/**
 *  遮罩浪颜色
 */
@property (nonatomic, strong) UIColor *maskWaveColor;

@property (nonatomic, copy) JJWaveBlock waveBlock;

- (void)stopWaveAnimation;

- (void)startWaveAnimation;

@end

NS_ASSUME_NONNULL_END
