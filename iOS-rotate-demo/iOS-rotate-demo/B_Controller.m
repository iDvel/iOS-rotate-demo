//
//  B_Controller.m
//  iOS-rotate-demo
//
//  Created by Dvel on 16/4/20.
//  Copyright © 2016年 Dvel. All rights reserved.
//

#import "B_Controller.h"

@interface B_Controller ()

@end

@implementation B_Controller

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.view.backgroundColor = [UIColor lightGrayColor];
	
	UIButton *buttonA = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
	buttonA.backgroundColor = [UIColor orangeColor];
	[self.view addSubview:buttonA];
	
	UIButton *buttonB = [[UIButton alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
	buttonB.backgroundColor = [UIColor purpleColor];
	[self.view addSubview:buttonB];
}

@end
