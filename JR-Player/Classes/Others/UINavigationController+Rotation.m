//
//  UINavigationController+Rotation.m
//  JR-Player
//
//  Created by lx_long on 16/3/9.
//  Copyright © 2016年 lx_long. All rights reserved.
//

#import "UINavigationController+Rotation.h"

@implementation UINavigationController (Rotation)
-(BOOL)shouldAutorotate {
	return [[self.viewControllers lastObject] shouldAutorotate];
}

-(NSUInteger)supportedInterfaceOrientations {
	return [[self.viewControllers lastObject] supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
	return [[self.viewControllers lastObject] preferredInterfaceOrientationForPresentation];
}
@end

@implementation UITabBarController (autoRotate)

- (BOOL)shouldAutorotate {
	return [self.selectedViewController shouldAutorotate];
}
- (NSUInteger)supportedInterfaceOrientations {
	return [self.selectedViewController supportedInterfaceOrientations];
}

@end
