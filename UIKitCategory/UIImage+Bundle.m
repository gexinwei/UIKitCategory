//
//  UIImage+Bundle.m
//  QBCriditRepayment
//
//  Created by ge wei on 2017/2/7.
//  Copyright © 2017年 Qianbao. All rights reserved.
//

#import "UIImage+Bundle.h"

@implementation UIImage (Bundle)

/**
 创建图片

 @param name 图片名称
 @param bundleName bundle名称
 @return 图片
 */
+ (UIImage *)imageName:(NSString *)name inBundle:(NSString *)bundleName class:(Class)classIns {
    
    NSBundle *bundle = [NSBundle bundleForClass:classIns];
    NSString *path = [bundle pathForResource:bundleName ofType:@"bundle"];
    NSBundle *strResourcesBundle = [NSBundle bundleWithPath:path];
    UIImage *image = [UIImage imageNamed:name inBundle:strResourcesBundle compatibleWithTraitCollection:nil];
    if (!image) {
        NSString *imagePath = [strResourcesBundle pathForResource:name ofType:@"png"];
        image = [UIImage imageWithContentsOfFile:imagePath];
    }
    return image;
}

@end
