//
//  UILabel.m
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-3-27.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import "UILabel.h"

@implementation UILabel

- (IBAction)didClickLabelButton_create:(NSButton *)button
{
    NSString *string_name = [@"label_"stringByAppendingString:_textField_class.stringValue];
    NSString *string_result = [NSString stringWithFormat:@"UILabel *%@ = [[UILabel alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];\n%@.backgroundColor = [UIColor clearColor];\n%@.text = @\"\";\n%@.textColor = [UIColor blackColor];\n%@.textAlignment = NSTextAlignmentCenter;\n%@.font = [UIFont fontWithName:@\"Helvetica\" size:15.0f];\n[self.view addSubview:%@];",string_name,string_name,string_name,string_name,string_name,string_name,string_name];
    if(_button_ziTi.state == 1)
    {
        NSString *string_yinYing = [NSString stringWithFormat:@"\n%@.shadowColor = [UIColor darkGrayColor];\n%@.shadowOffset = CGSizeMake(2, 2);",string_name,string_name];
        string_result = [string_result stringByAppendingString:string_yinYing];
    }
    _textView_result.string = string_result;
}

@end
