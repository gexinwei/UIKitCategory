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
//    [self createNavTitle:@"Test"];
//    [self createTitle:@"卡惠" font:[UIFont boldSystemFontOfSize:28] aligment:NSTextAlignmentLeft];
    [self createTitle:@"间爱的疯狂就挨打了房间啊大大" font:[UIFont systemFontOfSize:18] aligment:NSTextAlignmentCenter];
    
//    [self showToast:@"卡惠大开大合发卡行"];
    
    [self ac5];
    
    [self createNavRight:@"查看历史" titleColor:UIC_HEXCOLOR(0x111111ff) selector:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)ac1 {
    [self showCheckNetViewOnView:self.view msg:nil refreshBtnEvent:^{
        [self ac2];
    }];
}

- (void)ac2 {
    [self showNoNetViewOnView:self.view msg:nil refreshBtnEvent:^{
        [self ac3];
    }];
}

- (void)ac3 {
    [self showNoDataViewOnView:self.view msg:nil refreshBtnEvent:^{
        [self ac4];
    }];
}

- (void)ac4 {
    [self showErrorViewOnView:self.view msg:nil refreshBtnEvent:^{
        [self ac5];
    }];
}

- (void)ac5 {
    [self showMaintainViewOnView:self.view msg:nil refreshBtnEvent:^{
        [self ac1];
    }];
}

@end
