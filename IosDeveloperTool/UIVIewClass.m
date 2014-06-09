//
//  UIVIewClass.m
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-3-27.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import "UIVIewClass.h"

@implementation UIVIewClass

- (IBAction)didClickViewButton_create:(NSButton *)button
{
    NSString *string_name = [@"view_"stringByAppendingString:_textField_class.stringValue];
    NSString *string_result = [NSString stringWithFormat:@"UIView *%@ = [[UIView alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];\n%@.backgroundColor = [UIColor whiteColor];\n[self.view addSubview:%@];",string_name,string_name,string_name];
    if(_button_yuanJiao.state == 1)
    {
        NSString *string_yuanJiao = [NSString stringWithFormat:@"\n//设置矩形四个圆角半径\n%@.layer.cornerRadius = 10.0;\n%@.layer.borderWidth = 1.0;//边框宽度\n%@.layer.borderColor = [UIColor blackColor].CGColor;//边框颜色",string_name,string_name,string_name];
        string_result = [string_result stringByAppendingString:string_yuanJiao];
    }
    if(_button_danbianYuan.state == 1)
    {
        NSString *string_danBian = [NSString stringWithFormat:@"\n//设置两角圆角\nUIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:%@.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(8, 8)];\nCAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];\nmaskLayer.frame = %@.bounds;\nmaskLayer.path = maskPath.CGPath;\n%@.layer.mask = maskLayer;",string_name,string_name,string_name];
        string_result = [string_result stringByAppendingString:string_danBian];
    }
    if(_button_yinYing.state == 1)
    {
        NSString *string_yinYing = [NSString stringWithFormat:@"\n//添加四个边阴影\n%@.layer.shadowColor = [UIColor blackColor].CGColor;\n%@.layer.shadowOffset = CGSizeMake(0, 0);\n%@.layer.shadowOpacity = 0.5;\n%@.layer.shadowRadius = 10.0;\n//添加两个边阴影\n%@.layer.shadowColor = [UIColor blackColor].CGColor;\n//右下44  左上为-4-4\n%@.layer.shadowOffset = CGSizeMake(4, 4);\n%@.layer.shadowOpacity = 0.5;\n%@.layer.shadowRadius = 2.0;",string_name,string_name,string_name,string_name,string_name,string_name,string_name,string_name];
        string_result = [string_result stringByAppendingString:string_yinYing];
    }
    _textView_result.string = string_result;
}

@end
