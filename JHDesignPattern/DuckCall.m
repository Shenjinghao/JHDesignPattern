//
//  DuckCall.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/1.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "DuckCall.h"
#import "Duck.h"

@interface DuckCall ()<FlyBehaviorDelegate>

@end

@implementation DuckCall

- (instancetype)init
{
    self = [super init];
    if (self) {
        Duck *duck = [[Duck alloc] init];
        // Assigning to 'id<BehaviorDelegate>' from incompatible type 'DuckCall *__strong'，解决方法self改为（id）self
        duck.behaviorDelegate = (id)self;
    }
    return self;
}

- (void)performFly {
    if (_delegate && [_delegate respondsToSelector:@selector(duckCallFly)]) {
        [_delegate duckCallFly];
    }
}



- (void)quack {
    NSLog(@"鸭鸣器：嘎嘎叫");
}

@end
