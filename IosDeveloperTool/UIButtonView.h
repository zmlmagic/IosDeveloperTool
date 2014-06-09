//
//  UIButtonView.h
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-3-20.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface UIButtonView : NSView

@property (assign) IBOutlet NSTextField *textField_class;
@property (assign) IBOutlet NSTextView *textView_result;

@property (assign) IBOutlet NSButton *button_checkYanJiao;
@property (assign) IBOutlet NSButton *button_checkTarget;
@property (assign) IBOutlet NSButton *button_checkTitle;
@property (assign) IBOutlet NSButton *button_creat;

@property (assign) IBOutlet NSTextField *textField_imageName;
@property (assign) IBOutlet NSTextField *textField_imagePressed;

@property (strong) NSString *string_buttonImage;
@property (strong) NSString *string_buttonImagePressed;

@property (assign) float float_weight;
@property (assign) float float_heigt;

@end
