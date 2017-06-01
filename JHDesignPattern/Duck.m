//
//  Duck.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/5/31.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "Duck.h"
#import "FlyBehavior.h"
#import "QuackBehavior.h"

@interface Duck ()

@end

@implementation Duck

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

#pragma mark 委托给代理
- (void)performFly {
    if (_flyBehaviorDelegate && [_flyBehaviorDelegate respondsToSelector:@selector(fly)]) {
        [_flyBehaviorDelegate fly];
    }
}

- (void)performQuack {
    if (_quackBehaviorDelegate && [_quackBehaviorDelegate respondsToSelector:@selector(quack)]) {
        [_quackBehaviorDelegate quack];
    }
}
@end
