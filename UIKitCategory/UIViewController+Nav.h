//
//  UIViewController+Nav.h
//  钱包管家
//
//  Created by gexinwei on 2018/8/8.
//  Copyright © 2018年 QianBao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Nav)

- (void)createNavBack;

- (void)createNavTitle:(NSString *)title;

- (void)createNavTitleView:(UIView *)view;

- (void)createNavRightWithImage:(UIImage *)imageNor selected:(UIImage *)imageSel selector:(SEL)selector;

- (void)createNavRight:(NSString *)title titleColor:(UIColor *)titleColor selector:(SEL)selector;

@end
