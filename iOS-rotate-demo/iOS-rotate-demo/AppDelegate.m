//
//  AppDelegate.m
//  iOS-rotate-demo
//
//  Created by Dvel on 16/4/20.
//  Copyright © 2016年 Dvel. All rights reserved.
//

#import "AppDelegate.h"
#import "TabBarController.h"
#import "A_Controller.h"
#import "B_Controller.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	[self.window makeKeyAndVisible];
	
	UINavigationController *navC1 = [[UINavigationController alloc] initWithRootViewController:[A_Controller new]];
	UINavigationController *navC2 = [[UINavigationController alloc] initWithRootViewController:[B_Controller new]];
	
	TabBarController *tabbarC = [TabBarController new];
	[tabbarC addChildViewController:navC1];
	[tabbarC addChildViewController:navC2];
	self.window.rootViewController = tabbarC;
	
	navC1.title = @"我能旋转";
	navC2.title = @"我不能";

	return YES;
}


@end
