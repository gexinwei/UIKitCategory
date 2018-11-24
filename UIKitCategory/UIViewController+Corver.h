//
//  UIViewController+Corver.h
//  Pods-UIKitCategory_Example
//
//  Created by ge wei on 2018/9/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (Corver)

/**
 当没有数据时，显示无数据遮罩，通过点击界面，调用Block进行相关操作
 
 @param refreshBtnEvent 点击界面，进行相关操作的Block
 */
- (void)showNoDataViewOnView:(__kindof UIView *)onView msg:(NSString *)msg refreshBtnEvent:(dispatch_block_t)refreshBtnEvent;

/**
 显示检查网络
 
 @param onView superview
 @param msg 显示消息，可以为nil ，默认“无网络，请检查网络设置”
 @param refreshBtnEvent 点击界面Block
 */
- (void)showCheckNetViewOnView:(__kindof UIView *)onView msg:(NSString *)msg refreshBtnEvent:(dispatch_block_t)refreshBtnEvent;

/**
 当没有网络，显示无网络遮罩，通过点击界面，调用Block进行相关操作
 
 @param refreshBtnEvent 点击界面，进行相关操作的Block
 */
- (void)showNoNetViewOnView:(__kindof UIView *)onView msg:(NSString *)msg refreshBtnEvent:(dispatch_block_t)refreshBtnEvent;

/**
 当服务器报错（404、500、400等），显示服务器正在维护，点击界面，调用Block操作
 
 @param onView superview
 @param msg 显示消息，可以为nil ，默认“服务器正在维护，请稍候再试”
 @param refreshBtnEvent 点击界面Block
 */
- (void)showErrorViewOnView:(__kindof UIView *)onView msg:(NSString *)msg refreshBtnEvent:(dispatch_block_t)refreshBtnEvent;

/**
 显示维护页面，业务使用
 
 @param onView superview
 @param msg 显示消息，可以为nil ，默认“升级优化中，敬请期待”
 @param refreshBtnEvent 点击界面Block
 */
- (void)showMaintainViewOnView:(__kindof UIView *)onView msg:(NSString *)msg refreshBtnEvent:(dispatch_block_t)refreshBtnEvent;

/**
 去除遮罩
 */
- (void)hiddenCoverView;

/**
 设置覆盖图层不可操作
 */
- (void)setCoverViewUnUsable;

@end

/***************************************************      QBCoverView      ***************************************************/




@interface CoverView : UIView

@property (nonatomic, copy) dispatch_block_t refreshBtnEvent;

@property (nonatomic, copy)   NSString *title;
@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, copy)   NSString *content;
@property (nonatomic, strong) UILabel *contentLabel;

@property (nonatomic, strong) UIButton *coverButton;

@property (nonatomic, strong) UIButton *setButton;

- (void)setSetingButton;

- (instancetype)initWithImg:(UIImage *)img
                      title:(NSString *)title
                    message:(NSString *)message
                     onView:(UIView *)onView
           refreashBtnEvent:(dispatch_block_t)refreashBtnEvent;

@end

NS_ASSUME_NONNULL_END
