//
//  UITextView.h
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-3-27.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface UITextView : NSView

@property (assign) IBOutlet NSTextField *textField_class;
@property (assign) IBOutlet NSTextView *textView_result;

@property (assign) IBOutlet NSButton *button_delegate;

@end
