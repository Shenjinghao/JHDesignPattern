//
//  Duck.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/5/31.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 第二个设计原则：针对接口编程，java中的abstract抽象类声明的方法，子类的实例化需要全部实现对应的方法，和iOS的protocol重的require协议一样
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
 第三个设计原则：多用组合，少用继承（java中，上面两个protocol属于两个抽象类，所以用到两套继承关系）
 */
@protocol BehaviorDelegate <NSObject>

@required
- (void)fly;
- (void)quack;

@end


/**
 鸭子类🦆
 */

@interface Duck : NSObject

@property (nonatomic ,weak) id<FlyBehaviorDelegate> flyBehaviorDelegate;

@property (nonatomic ,weak) id<QuackBehaviorDelegate> quackBehaviorDelegate;

@property (nonatomic ,weak) id<BehaviorDelegate> behaviorDelegate;

/**
 叫和飞委托给行为类,
 第一个设计原则：找出应用中可能需要变化的地方，从不需要变化的代码中独立抽离出来（封装）
 */
- (void)performFly;

- (void)performQuack;

@end
