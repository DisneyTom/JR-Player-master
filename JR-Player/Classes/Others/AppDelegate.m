//
//  AppDelegate.m
//  JR-Player
//
//  Created by lx_long on 16/3/9.
//  Copyright © 2016年 lx_long. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "LoaclViewController.h"
#import "LiveViewController.h"
#import "JRSoundView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	[self setWindow];
	[JRSoundView sharedSoundView];
	return YES;
}

#pragma mark -
- (void)setWindow {
	self.window	= [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	//1.History
	LoaclViewController *localVC = [[LoaclViewController alloc] init];
	UINavigationController *locNav = [[UINavigationController alloc] initWithRootViewController:localVC];
	locNav.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:0];
	//2.Favorites
	ViewController *netVC = [[ViewController alloc] init];
	UINavigationController *netNav = [[UINavigationController alloc] initWithRootViewController:netVC];
	netNav.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
	//3.More
	LiveViewController *livVC = [[LiveViewController alloc] init];
	UINavigationController *livNav = [[UINavigationController alloc] initWithRootViewController:livVC];
	livNav.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMore tag:2];
	
    
	UITabBarController *tabController = [[UITabBarController alloc] init];
	[tabController setViewControllers:@[locNav, netNav, livNav]];
	
	self.window.rootViewController = tabController;
	[self.window makeKeyAndVisible];
}




- (void)applicationWillResignActive:(UIApplication *)application {}

- (void)applicationDidEnterBackground:(UIApplication *)application {}

- (void)applicationWillEnterForeground:(UIApplication *)application {}

- (void)applicationDidBecomeActive:(UIApplication *)application {}

- (void)applicationWillTerminate:(UIApplication *)application {}

@end

