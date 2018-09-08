//
//  GViewController.m
//  UIKitCategory
//
//  Created by gexinwei on 09/05/2018.
//  Copyright (c) 2018 gexinwei. All rights reserved.
//

#import "GViewController.h"
#import <UIKitCategory/UIKitCategory-umbrella.h>

@interface GViewController ()

@end

@implementation GViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self createNavBack];
    [self createNavTitle:@"Test"];
    
    [self showToast:@"卡惠大开大合发卡行"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
