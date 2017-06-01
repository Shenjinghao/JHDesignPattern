//
//  RubberDuck.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/1.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "RubberDuck.h"

@interface RubberDuck ()<FlyBehaviorDelegate, QuackBehaviorDelegate>

@end

@implementation RubberDuck

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
    NSLog(@"橡皮鸭：我不会飞");
}

- (void)quack {
    NSLog(@"橡皮鸭：唧唧叫");
}

@end
