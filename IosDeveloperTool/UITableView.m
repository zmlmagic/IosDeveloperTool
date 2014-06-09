//
//  UITableView.m
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-3-27.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import "UITableView.h"

@implementation UITableView

- (IBAction)didClickTableViewButton_create:(NSButton *)button
{
     NSString *string_name = [@"tableView_"stringByAppendingString:_textField_class.stringValue];
    NSString *string_result = [NSString stringWithFormat:@"UITableView *%@ = [[UITableView alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];\n%@.backgroundColor = [UIColor clearColor];\n%@.delegate = self;\n%@.dataSource = self;\n[self.view addSubview:%@];",string_name,string_name,string_name,string_name,string_name];
    if(_button_delegate.state == 1)
    {
        NSString *string_delegate = [NSString stringWithFormat:@"\n\n\n\n- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section\n\n- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView\n\n- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath\n{\n    static NSString *CellIdentifier = @\"InfoCell\";\n    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];\n    if (cell == nil)\n    {\n        cell = [[UITableViewCell alloc] initWithStyle: 	UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];\n       }\n    return cell;\n}\n\n- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath\n\n- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath"];
        string_result = [string_result stringByAppendingString:string_delegate];
    }
    _textView_result.string = string_result;
}

@end
