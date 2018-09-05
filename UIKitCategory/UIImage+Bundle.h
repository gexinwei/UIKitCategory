//
//  UIImage+Bundle.h
//  QBCriditRepayment
//
//  Created by ge wei on 2017/2/7.
//  Copyright © 2017年 Qianbao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Bundle)

/**
 创建图片
 
 @param name 图片名称
 @param bundleName bundle名称
 @return 图片
 */
+ (UIImage *)imageName:(NSString *)name inBundle:(NSString *)bundleName class:(Class)classIns;

@end
