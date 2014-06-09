//
//  UIImageView.h
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-4-2.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface UIImageView : NSView

@property (assign) IBOutlet NSTextField *textField_class;
@property (assign) IBOutlet NSTextView *textView_result;

@property (assign) IBOutlet NSTextField *textField_imageName;

@property (strong) NSString *string_buttonImage;

@property (assign) float float_weight;
@property (assign) float float_heigt;

@end
