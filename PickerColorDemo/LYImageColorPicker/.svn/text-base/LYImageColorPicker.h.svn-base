//
//  LYImageColorPicker.h
//  LYImageColorPicker
//
//  Created by lxy on 15/3/17.
//  Copyright (c) 2015年 lxy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RGBTransHSV.h"

typedef NS_ENUM(NSUInteger, ThePickerType){
    ThePickerTypeColor,
    ThePickerTypeTemperature
};

@interface LYImageColorPicker : UIControl

@property (nonatomic, assign) volatile BOOL isMoving;            //手指正在移动
@property (nonatomic, assign) volatile BOOL justEndMoving;       //停止移动


//重画frame
-(void) resetSelfFrame:(CGRect)frame;

//初始化颜色选择器
- (instancetype)initWithFrame:(CGRect)frame andType:(ThePickerType)type;
//重置背景图片
-(void) resetBackImageWithImage:(NSString *)imageString;
//重置颜色选取器图片
-(void) resetPickerImageWithImage:(NSString *)imageString;
//获取颜色
-(UIColor *)selectedColor;
//触摸点横向长度占总长度比例
-(CGFloat) persentOfTouchPointInView;
@end







