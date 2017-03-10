//
//  ViewController.m
//  PickerColorDemo
//
//  Created by apple on 17/3/10.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "LYImageColorPicker.h"

@interface ViewController (){
    UIButton *button;
}
@property (nonatomic, strong) LYImageColorPicker *colorPicker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.colorPicker = [[LYImageColorPicker alloc] initWithFrame:CGRectMake(10, 10, self.view.frame.size.width - 20, 300) andType:ThePickerTypeColor];
    [self.colorPicker addTarget:self action:@selector(colorPickerEndMove:) forControlEvents:UIControlEventTouchUpInside];
    [self.colorPicker addTarget:self action:@selector(colorPickerEndMove:) forControlEvents:UIControlEventTouchDown];
    [self.colorPicker resetBackImageWithImage:@"img_pigment01"];
    [self.view addSubview:self.colorPicker];
    
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(self.view.frame.size.width / 2.0 - 50, 500, 100, 100);
    button.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:button];
    
}


//颜色
- (void)colorPickerEndMove:(LYImageColorPicker *)picker
{
    button.backgroundColor = [picker selectedColor];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
