//
//  Duck.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/5/31.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 针对接口编程，java中的abstract抽象类声明的方法，子类的实例化需要全部实现对应的方法，和iOS的protocol重的require协议一样
 */
@protocol FlyBehaviorDelegate <NSObject>

@required

- (void)fly;

@end

@protocol QuackBehaviorDelegate <NSObject>

@required

- (void)quack;

@end

/**
 鸭子类🦆
 */

@interface Duck : NSObject

@property (nonatomic ,weak) id<FlyBehaviorDelegate> flyBehaviorDelegate;

@property (nonatomic ,weak) id<QuackBehaviorDelegate> quackBehaviorDelegate;

/**
 叫和飞委托给行为类
 */
- (void)performFly;

- (void)performQuack;

@end
