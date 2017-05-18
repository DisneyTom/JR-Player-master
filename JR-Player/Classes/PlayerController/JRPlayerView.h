//
//  JRPlayerView.h
//  JR-Player
//
//  Created by lx_long on 16/3/9.
//  Copyright © 2016年 lx_long. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@class JRControlView;
@class JRFullControlView;
@interface JRPlayerView : UIView

@property (nonatomic, strong) AVPlayer			*player;
@property (nonatomic, strong) AVAsset			*asset;
@property (nonatomic, strong) AVPlayerItem		*playerItem;
@property (nonatomic, strong) NSString			*urlString;
@property (nonatomic, strong) NSString			*title;

@property (nonatomic, strong) NSString			*imageUrl;
@property (nonatomic, strong) NSURL				*assetUrl;
@property (nonatomic, strong) JRControlView		*smallControlView;	// 小屏控制 View
@property (nonatomic, strong) JRFullControlView	*fullControlView;   //全屏控制 View

/**
 * 初始化方法
 */
- (instancetype)initWithFrame:(CGRect)frame
						image:(NSString *)imageUrl
						asset:(NSURL *)assetUrl;

- (instancetype)initImage:(NSString *)imageUrl
					asset:(NSURL *)assetUrl;

- (instancetype)initWithFrame:(CGRect)frame
						asset:(NSURL *)assetUrl;

- (instancetype)initWithURL:(NSURL *)assetURL;

/**
 *  准备播放
 */
- (void)prepareToPlay;

/**
 * 播放
 */
- (void)play;

/**
 * 倍速播放
 */

-(void)playCont;

/**
 * 暂停
 */
- (void)pause;
/**
 *  -- 定时器
 */
- (void)addTimer;
/**
 * -- 移除定时器
 */
- (void)removeTimer;

@end
