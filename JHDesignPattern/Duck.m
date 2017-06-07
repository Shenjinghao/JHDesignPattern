//
//  Duck.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/2.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "Duck.h"

@implementation Duck

- (void)performFly {
    if (flyBehaviorDelegate && [flyBehaviorDelegate respondsToSelector:@selector(fly)]) {
        [flyBehaviorDelegate fly];
    }
}

- (void)setFlyBehaviorDelegate:(id<FlyBehaviorInterface>)myFlyBehaviorDelegate {
    flyBehaviorDelegate = myFlyBehaviorDelegate;
}

@end
