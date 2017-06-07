//
//  JHSubscriptionServiceCenter.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/7.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "JHSubscriptionServiceCenter.h"

@interface JHSubscriptionServiceCenter ()

@end

static NSMutableDictionary const *_subscriptionDictionary = nil;

@implementation JHSubscriptionServiceCenter

+ (void)initialize {
    if (self == [JHSubscriptionServiceCenter class]) {
        _subscriptionDictionary = [NSMutableDictionary dictionary];
    }
}

#pragma mark 全局静态字典，根据查找到的subscriptionNumber来获取对应的
+ (NSHashTable *)existSubscriptionNumber:(NSString *)subscriptionNumber {
    // 返回的是NSMutableDictionary中存储的NSHashTable
    return [_subscriptionDictionary objectForKey:subscriptionNumber];
}

+ (void)createSubscriptionNumber:(NSString *)subscriptionNumber {
    
//    NSMapTable || NSHashTable
//    NSMapTable对象类似与NSDictionary的数据结构，但是NSMapTable功能比NSDictionary对象要多的功能就是可以设置key和value的NSPointerFunctionsOptions特性!其他的用法与NSDictionary相同.
    
    //使用断言功能
    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (!hashTable) {
//        hashTable = [NSHashTable hashTableWithOptions:NSPointerFunctionsWeakMemory];
        hashTable = [NSHashTable weakObjectsHashTable];
    }
    [_subscriptionDictionary setValue:hashTable forKey:subscriptionNumber];
}

+ (void)removeSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(subscriptionNumber);
    
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable) {
        
        [_subscriptionDictionary removeObjectForKey:subscriptionNumber];
    }
}

+ (void)addCustomer:(id<JHSubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(customer);
    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    [hashTable addObject:customer];
}

+ (void)removeCustomer:(id<JHSubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(customer);
    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    [hashTable removeObject:customer];
}

+ (void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(subscriptionNumber);
    
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable) {
        //容器抽象类，可以有while组合遍历所以的内容
        NSEnumerator *enumerator = [hashTable objectEnumerator];
        id<JHSubscriptionServiceCenterProtocol> delegate = nil;
        
        while (delegate = [enumerator nextObject]) {
            if (delegate && [delegate respondsToSelector:@selector(subscriptionMessage:subscriptionNumber:)]) {
                [delegate subscriptionMessage:message subscriptionNumber:subscriptionNumber];
            }
        }
    }
}

@end
