//
//  RubberDuck.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/2.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "RubberDuck.h"
#import "FlyWithRocketPower.h"

@implementation RubberDuck

- (instancetype)init
{
    self = [super init];
    if (self) {
        flyBehaviorDelegate = [[FlyWithRocketPower alloc] init];
    }
    return self;
}


@end
