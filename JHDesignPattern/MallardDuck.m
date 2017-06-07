//
//  MallarDuck.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/2.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "MallardDuck.h"
#import "FlyWithWings.h"

@implementation MallardDuck

- (instancetype)init
{
    self = [super init];
    if (self) {
        flyBehaviorDelegate = [[FlyWithWings alloc] init];
    }
    return self;
}

@end
