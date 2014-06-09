//
//  UITextView.m
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-3-27.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import "UITextView.h"

@implementation UITextView

- (IBAction)didClickTextViewButton_create:(NSButton *)button
{
    NSString *string_name = [@"textView_"stringByAppendingString:_textField_class.stringValue];
    NSString *string_result = [NSString stringWithFormat:@"UITextView *%@ = [[UITextView alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];\n%@.backgroundColor = [UIColor clearColor];\n%@.text = @\"\";\n%@.textColor = [UIColor whiteColor];\n%@.font = [UIFont systemFontOfSize:15];\n%@.autocorrectionType = UITextAutocorrectionTypeNo;\n%@.autocapitalizationType = UITextAutocapitalizationTypeNone;\n[self.view addSubview:%@];",string_name,string_name,string_name,string_name,string_name,string_name,string_name,string_name];
    if(_button_delegate.state == 1)
    {
        NSString *string_delegate = [NSString stringWithFormat:@"\n%@.delegate = self;\n\n\n\n- (void)textViewDidBeginEditing:(UITextView *)textView;\n- (void)textViewDidEndEditing:(UITextView *)textView;",string_name];
        string_result = [string_result stringByAppendingString:string_delegate];
    }
    _textView_result.string = string_result;
}

@end
