//
//  UICodeAutoCreate.m
//  IosDeveloperTool
//
//  Created by 张明磊 on 14-3-31.
//  Copyright (c) 2014年 张明磊. All rights reserved.
//

#import "UICodeAutoCreate.h"

@implementation UICodeAutoCreate

- (IBAction)isConnectNetwork:(NSButton *)button
{
    NSString *string_connectNetwork = @"+ (BOOL)isConnetionNetwork\n{\n    BOOL connect_result = YES;\n    Reachability *connect_net = [Reachability reachabilityWithHostname:@\"www.baidu.com\"];\n    switch ([connect_net currentReachabilityStatus])\n    {\n        case NotReachable:\n        {\n            connect_result = NO;\n        }break;\n        case ReachableViaWWAN:\n        {\n            connect_result = YES;\n        }break;\n              case ReachableViaWiFi:\n        {\n             connect_result = YES;\n        }break;}\n    return connect_result;\n}";
    _textView_result.string = string_connectNetwork;
}

- (IBAction)isENUM:(NSButton *)button
{
    NSString *string_ENUM = @"typedef NS_ENUM(NSInteger, LVGRequestViewButtonTag)\n{\n    LVGRequestViewButtonTag_send     = 0,\n    LVGRequestViewButtonTag_cancel      ,\n};\n";
    _textView_result.string = string_ENUM;
}

- (IBAction)isInstance:(NSButton *)button
{
    NSString *string_Instance = @"static JJManager_XMPP *xmppManager = nil;\n@implementation JJManager_XMPP\n+ (JJManager_XMPP *)sharedInstance\n{\n    static dispatch_once_t onceToken;\n    dispatch_once(&onceToken, ^{\n        xmppManager = [[self alloc] init];\n    });\n    return xmppManager;\n}";
    _textView_result.string = string_Instance;
}

@end
