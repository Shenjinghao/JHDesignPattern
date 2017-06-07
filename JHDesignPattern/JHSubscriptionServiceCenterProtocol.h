//
//  JHSubscriptionServiceCenterProtocol.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/7.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 订阅服务中心协议
 */
@protocol JHSubscriptionServiceCenterProtocol <NSObject>

- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber;

@end

/*
 KVO和通知是系统配置好的API，此处不再啰嗦了
 */
