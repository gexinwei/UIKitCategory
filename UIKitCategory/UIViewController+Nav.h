//
//  UIViewController+Nav.h
//  葛新伟
//
//  Created by gexinwei on 2018/8/8.
//  Copyright © 2018年 葛新伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Nav)

- (void)createNavBack;

- (void)createNavBack:(UIImage *)image;

- (void)createNavLeft:(UIImage *)image selector:(SEL)selector;

- (void)createNavTitle:(NSString *)title;

- (void)createNavTitleView:(UIView *)view;

- (void)createTitle:(NSString *)title font:(UIFont *)font aligment:(NSTextAlignment)aligment;

- (void)createNavRightWithImage:(UIImage *)imageNor selected:(UIImage *)imageSel selector:(SEL)selector;

- (void)createNavRight:(NSString *)title titleColor:(UIColor *)titleColor selector:(SEL)selector;

@end
