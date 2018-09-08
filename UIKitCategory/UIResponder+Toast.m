//
//  UIResponder+Toast.m
//  Pods
//
//  Created by ge wei on 2017/9/12.
//
//

#import "UIResponder+Toast.h"
#import "UIKitCategory.h"

@implementation UIResponder (Toast)


/**
 显示提示框

 @param msg 提示信息
 */
- (void)showToast:(NSString *)msg {
    
    [self showToast:msg position:TOAST_POSITION_BOTTOM];
}

/**
 显示提示框
 
 @param pos 显示位置
 @param msg 提示信息
 */
- (void)showToast:(NSString *)msg position:(ToastPosition)pos {
    
    NSDictionary *attr = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:17], NSFontAttributeName, nil];
    CGRect bound = [msg boundingRectWithSize:CGSizeMake(UIC_SCREEN_WIDTH-80, 20) options:NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil];
    CGRect frame;
    
    switch (pos) {
        case TOAST_POSITION_TOP:
        {
            frame = CGRectMake((UIC_SCREEN_WIDTH-bound.size.width-50)/2, 60, bound.size.width+50, 40);
        }
            break;
        case TOAST_POSITION_MIDDLE:
        {
            frame = CGRectMake((UIC_SCREEN_WIDTH-bound.size.width-50)/2, (UIC_SCREEN_HEIGHT-40)/2, bound.size.width+50, 40);
        }
            break;
        case TOAST_POSITION_BOTTOM:
        {
            frame = CGRectMake((UIC_SCREEN_WIDTH-bound.size.width-50)/2, UIC_SCREEN_HEIGHT-100, bound.size.width+50, 40);
        }
            break;
            
        default:
        {
            frame = CGRectMake((UIC_SCREEN_WIDTH-bound.size.width-50)/2, (UIC_SCREEN_HEIGHT-40)/2, bound.size.width+50, 40);
        }
            break;
    }
    
    [self toast:msg frame:frame];
}

- (void)toast:(NSString *)msg frame:(CGRect)frame {
    UIView *contentView = [[UIView alloc] initWithFrame:frame];
    contentView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.6];
    contentView.layer.cornerRadius = 20;
    contentView.layer.masksToBounds = YES;
    
    UILabel *tLB = [[UILabel alloc] init];
    tLB.textAlignment = NSTextAlignmentCenter;
    tLB.adjustsFontSizeToFitWidth = YES;
    tLB.font = [UIFont systemFontOfSize:17];
    tLB.textColor = [UIColor whiteColor];
    [contentView addSubview:tLB];
    
    tLB.frame = CGRectMake(25, 0, frame.size.width-50, frame.size.height);
    tLB.text = msg;
    
    NSTimeInterval time = msg.length/3>1? msg.length/3:1;
    if (time>3) {
        time = 3;
    }
    UIWindow *window = [UIApplication sharedApplication].delegate.window;
    [window addSubview:contentView];
    [self performSelector:@selector(dismissToast:) withObject:contentView afterDelay:time];
}


/**
 隐藏提示框
 */
- (void)dismissToast:(UIView *)view {
    [UIView animateWithDuration:0.3 animations:^{
        view.alpha = 0;
    } completion:^(BOOL finished) {
        if (finished) {
            [view removeFromSuperview];
        }
    }];
}



@end
