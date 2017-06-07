//
//  JHSubscriptionServiceCenter.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/7.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JHSubscriptionServiceCenterProtocol.h"

@interface JHSubscriptionServiceCenter : NSObject

/**
 *  创建订阅号
 *
 *  @param subscriptionNumber 订阅号码
 */
+ (void)createSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  移除订阅号
 *
 *  @param subscriptionNumber 订阅号码
 */
+ (void)removeSubscriptionNumber:(NSString *)subscriptionNumber;

#pragma mark - 维护客户信息
/**
 *  添加客户到具体的订阅号当中
 *
 *  @param customer           客户
 *  @param subscriptionNumber 订阅号
 */
+ (void)addCustomer:(id <JHSubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  从具体的订阅号当中移除客户
 *
 *  @param customer           客户
 *  @param subscriptionNumber 订阅号
 */
+ (void)removeCustomer:(id <JHSubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  发送消息到具体的订阅号当中
 *
 *  @param message            消息
 *  @param subscriptionNumber 订阅号码
 */
+ (void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber;

@end
