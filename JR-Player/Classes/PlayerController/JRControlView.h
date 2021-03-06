//
//  JRControlView.h
//  JR-Player
//
//  Created by lx_long on 16/3/9.
//  Copyright © 2016年 lx_long. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JRPlayerView;
@protocol JRControlViewDelegate <NSObject>
- (void)fullScreenDidSelected;
- (void)backBtnDidSelected;
@end

@interface JRControlView : UIView
@property (nonatomic, weak)		JRPlayerView					*player;
@property (nonatomic, weak)		id<JRControlViewDelegate>		delegate;
@property (nonatomic, strong)	NSString						*title;
@property (nonatomic, assign)	BOOL							isShow;

// ---
- (void)openSlidView:(void(^)())action;

- (void)closeAllImgArray;

- (void)addControlBtn;

- (void)hiddenAllImageBtn;

@end
