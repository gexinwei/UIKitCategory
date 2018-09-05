//
//  UIKitCategory.h
//  UIKitCategory
//
//  Created by ge wei on 2018/9/5.
//

#ifndef UIKitCategory_h
#define UIKitCategory_h

#define UIC_SCREEN_WIDTH    ([[UIScreen mainScreen] bounds].size.width)

#define UIC_SCREEN_HEIGHT   ([[UIScreen mainScreen] bounds].size.height)

#define UIC_HEXCOLOR(c)     [UIColor colorWithRed:((c>>24)&0xFF)/255.0 green:((c>>16)&0xFF)/255.0 blue:((c>>8)&0xFF)/255.0 alpha:((c)&0xFF)/255.0]

#import "UIImage+Bundle.h"
#import "BundleClass.h"


#endif /* UIKitCategory_h */
