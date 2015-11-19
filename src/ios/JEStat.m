//
//  JEStat.m
//
//  Created by 尹现伟 on 15/11/19.
//  Copyright © 2015年 上海美问信息科技有限公司. All rights reserved.
//

#import "JEStat.h"
#import "BaiduMobStat.h"

@implementation JEStat


- (void)startWithAppId:(CDVInvokedUrlCommand *)command{

    //判断appkey
    if (command.arguments.count && [[command.arguments firstObject] isKindOfClass:[NSString class]]) {
        
        NSString *appkey = (NSString *)[command.arguments firstObject];
        
        BaiduMobStat* statTracker = [BaiduMobStat defaultStat];
        // 此处(startWithAppId之前)可以设置初始化的可选参数，具体有哪些参数，可详见BaiduMobStat.h文件，例如：
        statTracker.shortAppVersion  = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
        [statTracker startWithAppId:appkey];
        
        CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"初始化成功"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
        
        
    }else{
        CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"初始化失败"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}


@end
