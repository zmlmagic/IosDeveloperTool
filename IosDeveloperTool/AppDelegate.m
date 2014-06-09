//
//  AppDelegate.m
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-3-19.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import "AppDelegate.h"

enum{
    tool_UIbutton    = 0,
    tool_UIView         ,
    tool_UILabel        ,
    tool_UITextField    ,
    tool_UITextView     ,
    tool_UIImageView    ,
    tool_UITableView    ,
};

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification{
    // Insert code here to initialize your application
    //NSArray *array_data = @[@"UIbutton",@"UIView",@"UILabel",@"UITextField",@"UITextView",@"UIImageView",@"UITableView"];
    //_array_dataSource = array_data;
    
    //_box.dataSource = self;
}

/*- (IBAction)didClickCreatButton:(id)sender
{
    switch (_box.indexOfSelectedItem)
    {
        case tool_UIbutton:
        {
            NSString *string_title = @"button_";
            NSString *string_name = [string_title stringByAppendingString:_field.stringValue];
            
            _textView.string = [NSString stringWithFormat:@"UIButton *%@ = [UIButton buttonWithType:UIButtonTypeCustom];\n%@.frame = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>);\n%@.backgroundColor = [UIColor clearColor];\n%@.titleLabel.text = @\"\";\n%@.titleLabel.textColor = [UIColor blackColor];\n[%@ addTarget:self action:@selector(didClickButton_%@:) forControlEvents:UIControlEventTouchUpInside];\n[self.view addSubview:%@];",string_name,string_name,string_name,string_name,string_name,string_name,string_name,string_name];

        }break;
        case tool_UIView:
        {
            
        }break;
        case tool_UILabel:
        {
            
        }break;
        case tool_UITextField:
        {
            
        }break;
        case tool_UITextView:
        {
            
        }break;
        case tool_UIImageView:
        {
            
        }break;
        case tool_UITableView:
        {
            
        }break;
        default:
            break;
    }
}

- (NSInteger)numberOfItemsInComboBox:(NSComboBox *)aComboBox
{
    return ([_array_dataSource count]);
}

- (id)comboBox:(NSComboBox *)aComboBox objectValueForItemAtIndex:(NSInteger) index
{
    return [_array_dataSource objectAtIndex:index];
}

- (NSUInteger)comboBox:(NSComboBox *)aComboBox indexOfItemWithStringValue: (NSString *)string
{
    return [_array_dataSource indexOfObject:string];
}

- (NSString *)comboBox:(NSComboBox *)aComboBox completedString:(NSString *) inputString
{
    NSString *candidate = [self firstGenreMatchingPrefix:inputString];
    return (candidate ? candidate : inputString);
}

- (NSString *)firstGenreMatchingPrefix:(NSString *) prefix{
    NSString *string = nil;
    NSString *lowercasePrefix = [prefix lowercaseString];
    NSEnumerator *stringEnum = [_array_dataSource objectEnumerator];
    while ( string = [stringEnum nextObject] )
        if ([[string lowercaseString] hasPrefix:lowercasePrefix] ) {
            return (string) ;
        }
    return (nil);
}*/

@end
