//
//  UIImageView.m
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-4-2.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import "UIImageView.h"

@implementation UIImageView

- (IBAction)didClickButton_create:(NSButton *)button
{
    NSString *string_name = [@"imageView_"stringByAppendingString:_textField_class.stringValue];
    NSString *string_result;
    if(_string_buttonImage)
    {
        string_result = [NSString stringWithFormat:@"UIImageView *%@ = [[UIImageView alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, %.f, %.f)];\n%@.image = [UIImage imageFileName:@\"%@\"];\n[self.view addSubview:%@];",string_name,_float_weight,_float_heigt,string_name,_string_buttonImage,string_name];
    }
    else
    {
        string_result = [NSString stringWithFormat:@"UIImageView *%@ = [[UIImageView alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, , )];\n[self.view addSubview:%@];",string_name,string_name];
    }
    _textView_result.string = string_result;
}

- (IBAction)didClickButton_addBackImage:(NSButton *)button
{
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    [panel setAllowsMultipleSelection:NO];
    [panel setCanChooseDirectories:YES];
    [panel setCanChooseFiles:YES];
    [panel setResolvesAliases:YES];
    
    NSString *panelTitle = NSLocalizedString(@"Choose a file", @"Title for the open panel");
    [panel setTitle:panelTitle];
    NSString *promptString = NSLocalizedString(@"Choose", @"Prompt for the open panel prompt");
    [panel setPrompt:promptString];
    
    UIImageView * __weak weakSelf = self;
    [panel beginSheetModalForWindow:[self window] completionHandler:^(NSInteger result){
        // Hide the open panel.
        [panel orderOut:self];
        // If the return code wasn't OK, don't do anything.
        if (result != NSOKButton) {
            return;
        }
        // Get the first URL returned from the Open Panel and set it at the first path component of the control.
        NSURL *url = [[panel URLs] objectAtIndex:0];
        NSString *string_path = [NSString stringWithFormat:@"%@",url];
        NSString *string_result = [string_path substringFromIndex:7];
        
        string_result = [string_result stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        [weakSelf getSizeWithPathString:string_result andTag:button.tag];
    }];
}

- (void)getSizeWithPathString:(NSString *)string_path andTag:(NSInteger)button_tag
{
    NSString *string_name = [string_path lastPathComponent];
    switch (button_tag) {
        case 0:
        {
            NSImage *image = [[NSImage alloc] initWithContentsOfFile:string_path];
            _float_heigt = image.size.height;
            _float_weight = image.size.width;
            _textField_imageName.stringValue = string_name;
            _string_buttonImage = string_name;
        }break;
        default:
            break;
    }
}

@end
