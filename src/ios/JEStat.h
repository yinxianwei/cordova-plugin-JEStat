//
//  JEStat.h
//
//  Created by 尹现伟 on 15/11/19.
//  Copyright © 2015年 上海美问信息科技有限公司. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>


@interface JEStat : CDVPlugin

- (void)startWithAppId:(CDVInvokedUrlCommand *)command;

@end
