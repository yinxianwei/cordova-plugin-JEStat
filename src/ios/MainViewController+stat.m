//
//  MainViewController+stat.m
//
//  Created by 尹现伟 on 15/11/19.
//  Copyright © 2015年 上海美问信息科技有限公司. All rights reserved.
//

#import "MainViewController+stat.h"
#import "BaiduMobStat.h"

@implementation MainViewController (stat)

- (BOOL) webView:(UIWebView*)theWebView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType
{
    [[BaiduMobStat defaultStat] webviewStartLoadWithRequest:request];
    return [super webView:theWebView shouldStartLoadWithRequest:request navigationType:navigationType];
}

@end
