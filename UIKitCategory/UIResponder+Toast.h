//
//  UIResponder+Toast.h
//  Pods
//
//  Created by ge wei on 2017/9/12.
//
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ToastPosition) {
    TOAST_POSITION_TOP          =   0,      //在屏幕顶部弹框
    TOAST_POSITION_MIDDLE       =   1,      //在屏幕中间弹框
    TOAST_POSITION_BOTTOM       =   2,      //在屏幕底部弹框
};

@interface UIResponder (Toast)

/**
 显示提示框
 
 @param msg 提示信息
 */
- (void)showToast:(NSString *)msg;

/**
 显示提示框
 
 @param pos 显示位置
 @param msg 提示信息
 */
- (void)showToast:(NSString *)msg position:(ToastPosition)pos;

@end
