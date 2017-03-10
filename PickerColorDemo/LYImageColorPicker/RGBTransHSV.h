//
//  RGBTransHSV.h
//  LYImageColorPicker
//
//  Created by lxy on 15/3/18.
//  Copyright (c) 2015年 lxy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef struct{
    unsigned char R;
    unsigned char G;
    unsigned char B;
}COLOR_RGB;

typedef struct{
    float H;
    float S;
    float V;
}COLOR_HSV;

@interface RGBTransHSV : NSObject

+(COLOR_RGB) hsvToRgb:(COLOR_HSV)hsv;
+(COLOR_HSV) rgbToHsv:(COLOR_RGB)rgb;
+(COLOR_HSV) colorToHsv:(UIColor *)color;
+(COLOR_RGB) colorToRgb:(UIColor *)color;
@end
