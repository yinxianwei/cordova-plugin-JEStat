>     /*若应用是基于iOS 9系统开发，需要在程序的info.plist文件中添加一项参数配置，确保日志正常发送，配置如下：
        NSAppTransportSecurity(NSDictionary):
            NSAllowsArbitraryLoads(Boolen):YES
     */

# cordova-plugin-JEStat

插件实现了cordova iOS应用添加百度统计，通过JS调用百度统计的API

# Installation

	cordova plugin add https://github.com/yinxianwei/cordova-plugin-JEStat.git

# Supported Platforms

* iOS

# API Reference

* startWithAppId 
* BaiduMobStat
	* onPageStart
	* onPageEnd
	* onEvent
	* onEventStart
	* onEventEnd
	* onEventDuration

## startWithAppId
设置百度统计的appkey

## BaiduMobStat

请参考百度移动统计API文档

[http://mtj.baidu.com/](http://mtj.baidu.com/)