//
//  UITextField.m
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-3-27.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import "UITextField.h"

@implementation UITextField

- (IBAction)didClickTextFieldButton_create:(NSButton *)button
{
    NSString *string_name = [@"textField_"stringByAppendingString:_textField_class.stringValue];
    
    NSString *string_result = [NSString stringWithFormat:@"UITextField *%@ = [[UITextField alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];\n%@.backgroundColor = [UIColor clearColor];\n%@.textColor = [UIColor blackColor];\n%@.textAlignment = NSTextAlignmentCenter;\n%@.placeholder = @\"\";\n%@.text = @"";\n%@.font = [UIFont systemFontOfSize:15];\n%@.borderStyle = UITextBorderStyleLine;\n%@.clearButtonMode = UITextFieldViewModeAlways;\n//密码暗文\n%@.secureTextEntry = YES;\n//去掉首字母大写和自动纠错\n%@.autocorrectionType = UITextAutocorrectionTypeNo;\n%@.autocapitalizationType = UITextAutocapitalizationTypeNone;\n//字多自动缩进\n%@.adjustsFontSizeToFitWidth = YES;\n//缩进最小字体\n%@.minimumFontSize = 20;\n[self.view addSubview:%@]",string_name,string_name,string_name,string_name,string_name,string_name,string_name,string_name,string_name,string_name,string_name,string_name,string_name,string_name,string_name];
    
    if(_button_delegate.state == 1)
    {
        NSString *string_delegate = [NSString stringWithFormat:@"\n%@.delegate = self;\n\n\n\n\n- (void)textFieldDidBeginEditing:(UITextField *)textField;\n- (void)textFieldDidEndEditing:(UITextField *)textField;\n- (BOOL)textFieldShouldReturn:(UITextField *)textField;",string_name];
        string_result = [string_result stringByAppendingString:string_delegate];
    }
    _textView_result.string = string_result;
}

@end
