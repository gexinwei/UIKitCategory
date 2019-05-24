//
//  UIViewController+Corver.m
//  Pods-UIKitCategory_Example
//
//  Created by ge wei on 2018/9/28.
//

#import "UIViewController+Corver.h"
#import "UIKitCategory.h"

#define COVER_TAG   1000

@implementation UIViewController (Corver)

/**
 当没有数据时，显示无数据遮罩，通过点击界面，调用Block进行相关操作
 
 @param refreshBtnEvent 点击界面，进行相关操作的Block
 */
- (void)showNoDataViewOnView:(__kindof UIView *)onView msg:(NSString *)msg refreshBtnEvent:(dispatch_block_t)refreshBtnEvent {
    
    CoverView *view = (CoverView *)[self.view viewWithTag:COVER_TAG];
    UIImage *image = [UIImage imageName:@"img_no_data" inBundle:@"UIKitCategory" class:[BundleClass class]];
    if (!view || ![view isKindOfClass:[CoverView class]]) {
        view = [[CoverView alloc] initWithImg:image title:@"" message:msg? :@"还没有数据" onView:onView refreashBtnEvent:refreshBtnEvent];
        view.tag = COVER_TAG;
    } else {
        view.imageView.image = image;
        view.refreshBtnEvent = refreshBtnEvent;
        view.contentLabel.text = msg? :@"还没有数据";
        view.hidden = NO;
    }
    view.setButton.hidden = YES;
    
    [onView addSubview:view];
}

/**
 显示检查网络
 
 @param onView superview
 @param msg 显示消息，可以为nil ，默认“无网络，请检查网络设置”
 @param refreshBtnEvent 点击界面Block
 */
- (void)showCheckNetViewOnView:(__kindof UIView *)onView msg:(NSString *)msg refreshBtnEvent:(dispatch_block_t)refreshBtnEvent {
    
    CoverView *view = (CoverView *)[self.view viewWithTag:COVER_TAG];
    UIImage *image = [UIImage imageName:@"img_no_network" inBundle:@"UIKitCategory" class:[BundleClass class]];
    if (!view || ![view isKindOfClass:[CoverView class]]) {
        view = [[CoverView alloc] initWithImg:image title:@"" message:msg? :@"无网络，请检查网络设置" onView:onView refreashBtnEvent:refreshBtnEvent];
        view.tag = COVER_TAG;
    } else {
        view.imageView.image = image;
        view.refreshBtnEvent = refreshBtnEvent;
        view.contentLabel.text = msg? :@"无网络，请检查网络设置";
        view.hidden = NO;
    }
    [view setSetingButton];
    view.setButton.hidden = NO;
    
    [onView addSubview:view];
}

/**
 当没有网络，显示无网络遮罩，通过点击界面，调用Block进行相关操作
 
 @param refreshBtnEvent 点击界面，进行相关操作的Block
 */
- (void)showNoNetViewOnView:(__kindof UIView *)onView msg:(NSString *)msg refreshBtnEvent:(dispatch_block_t)refreshBtnEvent {
    
    CoverView *view = (CoverView *)[self.view viewWithTag:COVER_TAG];
    UIImage *image = [UIImage imageName:@"img_no_network" inBundle:@"UIKitCategory" class:[BundleClass class]];
    if (!view || ![view isKindOfClass:[CoverView class]]) {
        view = [[CoverView alloc] initWithImg:image title:@"" message:msg? :@"网络不给力，请稍候再试" onView:onView refreashBtnEvent:refreshBtnEvent];
        view.tag = COVER_TAG;
    } else {
        view.imageView.image = image;
        view.refreshBtnEvent = refreshBtnEvent;
        view.contentLabel.text = msg? :@"网络不给力，请稍候再试";
        view.hidden = NO;
    }
    view.setButton.hidden = YES;
    
    [onView addSubview:view];
}

/**
 当服务器报错（404、500、400等），显示服务器正在维护，点击界面，调用Block操作
 
 @param onView superview
 @param msg 显示消息，可以为nil ，默认“服务器正在维护，请稍候再试”
 @param refreshBtnEvent 点击界面Block
 */
- (void)showErrorViewOnView:(__kindof UIView *)onView msg:(NSString *)msg refreshBtnEvent:(dispatch_block_t)refreshBtnEvent {
    
    CoverView *view = (CoverView *)[self.view viewWithTag:COVER_TAG];
    UIImage *image = [UIImage imageName:@"img_server_crash" inBundle:@"UIKitCategory" class:[BundleClass class]];
    if (!view || ![view isKindOfClass:[CoverView class]]) {
        view = [[CoverView alloc] initWithImg:image title:@"" message:msg? :@"服务器正在维护，请稍候再试" onView:onView refreashBtnEvent:refreshBtnEvent];
        view.tag = COVER_TAG;
    } else {
        view.imageView.image = image;
        view.refreshBtnEvent = refreshBtnEvent;
        view.contentLabel.text = msg? :@"服务器正在维护，请稍候再试";
        view.hidden = NO;
    }
    view.setButton.hidden = YES;
    
    [onView addSubview:view];
}

/**
 显示维护页面，业务使用
 
 @param onView superview
 @param msg 显示消息，可以为nil ，默认“升级优化中，敬请期待”
 @param refreshBtnEvent 点击界面Block
 */
- (void)showMaintainViewOnView:(__kindof UIView *)onView msg:(NSString *)msg refreshBtnEvent:(dispatch_block_t)refreshBtnEvent {
    
    CoverView *view = (CoverView *)[self.view viewWithTag:COVER_TAG];
    UIImage *image = [UIImage imageName:@"img_server_upgrade" inBundle:@"UIKitCategory" class:[BundleClass class]];
    if (!view || ![view isKindOfClass:[CoverView class]]) {
        view = [[CoverView alloc] initWithImg:image title:@"" message:msg? :@"升级优化中，敬请期待" onView:onView refreashBtnEvent:refreshBtnEvent];
        view.tag = COVER_TAG;
    } else {
        view.imageView.image = image;
        view.refreshBtnEvent = refreshBtnEvent;
        view.contentLabel.text = msg? :@"升级优化中，敬请期待";
        view.hidden = NO;
    }
    view.setButton.hidden = YES;
    
    [onView addSubview:view];
}

/**
 去除遮罩
 */
- (void)hiddenCoverView {
    
    CoverView *view = (CoverView *)[self.view viewWithTag:COVER_TAG];
    if (view && [view isKindOfClass:[CoverView class]]) {
        view.hidden = YES;
    }
}

/**
 设置覆盖图层不可操作

 @param isUsabel 是否可用
 */
- (void)setCoverViewUsable:(BOOL)isUsabel {
    CoverView *view = (CoverView *)[self.view viewWithTag:COVER_TAG];
    if (view && [view isKindOfClass:[CoverView class]]) {
        view.userInteractionEnabled = isUsabel;
    }
}

@end


/***************************************************      CoverView      ***************************************************/


@implementation CoverView

- (instancetype)initWithImg:(UIImage *)img
                      title:(NSString *)title
                    message:(NSString *)message
                     onView:(UIView *)onView
           refreashBtnEvent:(dispatch_block_t)refreashBtnEvent {
    
    if (self = [super initWithFrame:onView.bounds]) {
        
        self.image = img;
        
        self.content = message;
        
        self.refreshBtnEvent = [refreashBtnEvent copy];
        
        [self setCoverButton];
        
        self.backgroundColor = [UIColor whiteColor];
    }
    
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _imageView.frame = CGRectMake((self.frame.size.width - _imageView.frame.size.width) / 2, (self.frame.size.height - _imageView.frame.size.height) / 2 - 80, _imageView.frame.size.width, _imageView.frame.size.height);
    
    NSString *content = _contentLabel.text;
    NSDictionary *att =@{NSFontAttributeName: [UIFont systemFontOfSize:18]};
    CGRect bound = [content boundingRectWithSize:CGSizeMake(UIC_SCREEN_WIDTH-30, 60) options:NSStringDrawingUsesLineFragmentOrigin attributes:att context:nil];
    _contentLabel.frame = CGRectMake(15, _imageView.frame.origin.y + _imageView.frame.size.height + 30, self.frame.size.width-30, bound.size.height+3);
    
    if (_setButton) {
        _setButton.frame = CGRectMake((self.frame.size.width-150)/2, CGRectGetMaxY(_contentLabel.frame)+30, 150, 48);
    }
    if (_coverButton) {
        _coverButton.frame = CGRectMake(0, 0, UIC_SCREEN_WIDTH, CGRectGetMaxY(_contentLabel.frame));
    }
}


#pragma mark ***************************************     懒加载     ***************************************


- (void)setTitle:(NSString *)title {
    
    if (!_titleLabel) {
        
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.textColor = [UIColor blackColor];
        [self addSubview:_titleLabel];
    }
    
    _titleLabel.text = title;
}

- (void)setImage:(UIImage *)image {
    
    if (!_imageView) {
        
        CGSize size = image.size;
        
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)];
        _imageView.userInteractionEnabled = YES;
        [self addSubview:_imageView];
    }
    
    _imageView.image = image;
}

- (void)setContent:(NSString *)content {
    
    if (!_contentLabel) {
        
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textAlignment = NSTextAlignmentCenter;
        _contentLabel.font = [UIFont systemFontOfSize:16];
        _contentLabel.textColor = UIC_HEXCOLOR(0x999999ff);
        _contentLabel.numberOfLines = 0;
        _contentLabel.adjustsFontSizeToFitWidth = YES;
        [self addSubview:_contentLabel];
    }
    
    _contentLabel.text = content;
}

- (void)setCoverButton {
    
    if (!_coverButton) {
        
        _coverButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, UIC_SCREEN_WIDTH, CGRectGetMaxY(_contentLabel.frame))];
        
        [_coverButton addTarget:self action:@selector(coverButtonEvent:) forControlEvents:UIControlEventTouchUpInside];
        _coverButton.exclusiveTouch = YES;
        
        [self addSubview:_coverButton];
    }
}

- (void)setSetingButton {
    if (!_setButton) {
        _setButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _setButton.frame = CGRectMake((self.frame.size.width-150)/2, CGRectGetMaxY(_contentLabel.frame)+30, 150, 48);
        [_setButton setTitle:@"前往设置" forState:UIControlStateNormal];
        [_setButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _setButton.titleLabel.font = [UIFont systemFontOfSize:16];
        [_setButton setBackgroundColor:UIC_HEXCOLOR(0xF66A45FF)];
        _setButton.layer.cornerRadius = 5;
        _setButton.layer.masksToBounds = YES;
        _setButton.exclusiveTouch = YES;
        [_setButton addTarget:self action:@selector(setButtonEvent:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_setButton];
        _coverButton.enabled = NO;
    }
}

#pragma mark ***************************************     Private Method     ***************************************


- (void)hiddenCoverView {
    
    if (self.superview) {
        
        [self setHidden:YES];
    }
}


#pragma mark ***************************************     But   ton Event     ***************************************


- (void)coverButtonEvent:(id)sender {
    
    [self hiddenCoverView];
    
    if (self.refreshBtnEvent) {
        
        self.refreshBtnEvent();
    }
}

- (void)setButtonEvent:(id)sender {
    NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        if (@available(iOS 10.0, *)) {
            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:^(BOOL success) {
                
            }];
        } else {
            // Fallback on earlier versions
            [[UIApplication sharedApplication] openURL:url];
        }
    }
}

@end
