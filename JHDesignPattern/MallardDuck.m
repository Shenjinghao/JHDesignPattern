//
//  MallardDuck.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/1.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "MallardDuck.h"
#import "Duck.h"

@interface MallardDuck ()<FlyBehaviorDelegate, QuackBehaviorDelegate>

@end

@implementation MallardDuck

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.flyBehaviorDelegate = self;
        self.quackBehaviorDelegate = self;
    }
    return self;
}

- (void)fly {
    NSLog(@"绿头鸭：我会飞");
}

- (void)quack {
    NSLog(@"绿头鸭：嘎嘎叫");
}


@end
