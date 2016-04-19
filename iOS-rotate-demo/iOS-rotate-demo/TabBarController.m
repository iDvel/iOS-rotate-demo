//
//  TabBarController.m
//  iOS-rotate-demo
//
//  Created by Dvel on 16/4/20.
//  Copyright © 2016年 Dvel. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController


- (BOOL)shouldAutorotate
{
	// 获取当前的控制器
	UINavigationController *navC = self.selectedViewController;
	UIViewController *currentVC = navC.visibleViewController;
	
	// 因为默认shouldAutorotate是YES，所以每个不需要支持横屏的控制器都需要重写一遍这个方法
	// 一般项目中要支持横屏的界面比较少，为了解决这个问题，就取反值：shouldAutorotate返回为YES的时候不能旋转，返回NO的时候可以旋转
	// 所以只要重写了shouldAutorotate方法的控制器，并return了NO，这个控制器就可以旋转
	// 当然，如果项目中支持横屏的界面占多数的话，可以不取反值。
	NSLog(@"当前控制器：%@  是否支持旋转：%zd", currentVC, !currentVC.shouldAutorotate);
	
	return !currentVC.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
	return UIInterfaceOrientationMaskAll;
}

@end
