//
//  UIViewController+Nav.m
//  钱包管家
//
//  Created by gexinwei on 2018/8/8.
//  Copyright © 2018年 QianBao. All rights reserved.
//

#import "UIViewController+Nav.h"
#import "UIKitCategory.h"

@implementation UIViewController (Nav)

- (void)createNavBack {
    
    UIImage *image = [UIImage imageName:@"R_global_back_btn" inBundle:@"UIKitCategory" class:[BundleClass class]];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    button.contentEdgeInsets = UIEdgeInsetsMake(0, -30, 0, 0);
    [button setImage:image forState:UIControlStateNormal];
    [button addTarget:self action:@selector(navLeftButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:button];
    [self.navigationItem setLeftBarButtonItems:[NSArray arrayWithObjects:item, nil]];
}

- (void)createNavTitle:(NSString *)title {
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake((UIC_SCREEN_WIDTH-68)/2, 34, 68, 17)];
    label.text = title;
    label.textColor = UIC_HEXCOLOR(0x333333FF);
    label.font = [UIFont systemFontOfSize:17];
    label.textAlignment = NSTextAlignmentCenter;
    self.navigationItem.titleView = label;
}

- (void)createNavTitleView:(UIView *)view {
    self.navigationItem.titleView = view;
}

- (void)createTitle:(NSString *)title font:(UIFont *)font aligment:(NSTextAlignment)aligment {
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, UIC_SCREEN_WIDTH-30, 44)];
    label.text = title;
    label.textColor = UIC_HEXCOLOR(0x333333FF);
    label.font = font;
    label.textAlignment = aligment;
    self.navigationItem.titleView = label;
}

- (void)navLeftButtonAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)createNavRightWithImage:(UIImage *)imageNor selected:(UIImage *)imageSel selector:(SEL)selector {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -15);
    button.frame = CGRectMake(0, 0, 44, 44);
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    [button setImage:imageNor forState:UIControlStateNormal];
    [button setImage:imageSel forState:UIControlStateSelected];
    
    [button addTarget:self
               action:selector
     forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:button];
    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects:item, nil]];
}

- (void)createNavRight:(NSString *)title titleColor:(UIColor *)titleColor selector:(SEL)selector {
    
    NSDictionary *attr = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    CGRect bound = [title boundingRectWithSize:CGSizeMake(100, 20) options:NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil];
    float width = (bound.size.width+10)>44? :44;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -15);
    button.frame = CGRectMake(0, 0, width, 44);
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor? :UIC_HEXCOLOR(0x333333FF) forState:UIControlStateNormal];
    
    [button addTarget:self
               action:selector
     forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:button];
    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects:item, nil]];
}

@end
