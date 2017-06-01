//
//  FlyBehavior.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/5/31.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 飞翔的抽象超类（适用于java，iOS直接protocol）
 */
@interface FlyBehavior : NSObject

- (void)fly;

@end

/**
 真会飞的鸭子
 */
@interface FlyWithWings : FlyBehavior

- (void)fly;

@end


/**
 不会飞的鸭子（橡皮鸭）
 */
@interface FlyNoWay : FlyBehavior

- (void)fly;

@end
