//
//  AppDelegate.h
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-3-19.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class UIButtonView;

@interface AppDelegate : NSObject <NSApplicationDelegate,NSComboBoxDataSource>

@property (assign) IBOutlet NSWindow *window;

@property (retain) NSArray *array_dataSource;

//- (IBAction)didClickCreatButton:(id)sender;

@end
