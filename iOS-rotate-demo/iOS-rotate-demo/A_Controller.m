//
//  A_Controller.m
//  iOS-rotate-demo
//
//  Created by Dvel on 16/4/20.
//  Copyright © 2016年 Dvel. All rights reserved.
//

#import "A_Controller.h"

@interface A_Controller ()

@end

@implementation A_Controller

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.view.backgroundColor = [UIColor lightTextColor];
	
	UIButton *buttonA = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
	buttonA.backgroundColor = [UIColor blueColor];
	[self.view addSubview:buttonA];
	
	UIButton *buttonB = [[UIButton alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
	buttonB.backgroundColor = [UIColor redColor];
	[self.view addSubview:buttonB];
}

- (BOOL)shouldAutorotate
{
	// 因为是取反值，所以返回NO的控制器，就可以旋转
	// 因为是取反值，不重写这个方法的控制器，默认就不支持旋转
	return NO;
}

@end
