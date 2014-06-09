//
//  UIButtonView.m
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-3-20.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import "UIButtonView.h"
#import "AppDelegate.h"

@implementation UIButtonView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (IBAction)didClickButton_create:(NSButton *)button
{
    NSString *string_name = [@"button_"stringByAppendingString:_textField_class.stringValue];
    NSString *string_result;
    if(_string_buttonImage)
    {
        string_result = [NSString stringWithFormat:@"UIButton *%@ = [UIButton buttonWithType:UIButtonTypeCustom];\n%@.frame = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, %.f, %.f);\n%@.backgroundColor = [UIColor clearColor];\n[%@ setImage:[UIImage imageFileName:@\"%@\"] forState:UIControlStateNormal];\n[%@ setImage:[UIImage imageFileName:@\"%@\"] forState:UIControlStateHighlighted];\n[%@ setTitle:@\"\" forState:UIControlStateNormal];\n[%@ setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];\n[%@ addTarget:self action:@selector(didClickButton_%@:)forControlEvents:UIControlEventTouchUpInside];\n[self.view addSubview:%@];",string_name,string_name,_float_weight,_float_heigt,string_name,string_name, _string_buttonImage,string_name,_string_buttonImagePressed,string_name,string_name,string_name,_textField_class.stringValue,string_name];
        
        
    }
    else
    {
        string_result = [NSString stringWithFormat:@"UIButton *%@ = [UIButton buttonWithType:UIButtonTypeCustom];\n%@.frame = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>);\n%@.backgroundColor = [UIColor clearColor];\n[%@ setTitle:@\"\" forState:UIControlStateNormal];\n[%@ setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];\n[%@ addTarget:self action:@selector(didClickButton_%@:) forControlEvents:UIControlEventTouchUpInside];\n[self.view addSubview:%@];",string_name,string_name,string_name,string_name,string_name,string_name,_textField_class.stringValue,string_name];
    }
    
    if(_button_checkTitle.state == 1)
    {
        NSString *string_title = [NSString stringWithFormat:@"\n%@.titleLabel.font = [UIFont fontWithName:@\"Helvetica-Bold\" size:16];\n%@.titleLabel.textAlignment = NSTextAlignmentCenter;\n%@.titleLabel.textColor = [UIColor whiteColor];\n%@.titleLabel.shadowColor = [UIColor darkGrayColor];\n%@.titleLabel.shadowOffset = CGSizeMake(2, 2);",string_name,string_name,string_name,string_name,string_name];
        string_result = [string_result stringByAppendingString:string_title];
    }
    
    if(_button_checkYanJiao.state == 1)
    {
        NSString *string_yuanJiao = [NSString stringWithFormat:@"\n%@.layer.cornerRadius = 3.0;",string_name];
        string_result = [string_result stringByAppendingString:string_yuanJiao];
    }
    
    if(_button_checkTarget.state == 1)
    {
        NSString *string_target = [NSString stringWithFormat:@"\n\n\n\n\n- (void)didClickButton_%@:(UIButton *)%@{\n\n}",_textField_class.stringValue,string_name];
        string_result = [string_result stringByAppendingString:string_target];
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
    
    UIButtonView * __weak weakSelf = self;
    [panel beginSheetModalForWindow:[self window] completionHandler:^(NSInteger result){
        // Hide the open panel.
        [panel orderOut:self];
        // If the return code wasn't OK, don't do anything.
        if (result != NSOKButton) {
            return;
        }
        // Get the first URL returned from the Open Panel and set it at the first path component of the control.
        NSURL *url = [[panel URLs] objectAtIndex:0];
        NSLog(@"%@",url);
    
        
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
        case 1:
        {
            _textField_imagePressed.stringValue = string_name;
            _string_buttonImagePressed = string_name;
        }
        default:
            break;
    }
}


@end
