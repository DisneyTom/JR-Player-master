//
//  UINavigationController+Rotation.h
//  JR-Player
//
//  Created by lx_long on 16/3/9.
//  Copyright © 2016年 lx_long. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (Rotation)

@end

@interface UITabBarController (autoRotate)

-(BOOL)shouldAutorotate;
- (NSUInteger)supportedInterfaceOrientations;

@end
