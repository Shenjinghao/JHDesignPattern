//
//  DuckCall.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/2.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "DuckCall.h"

@implementation DuckCall

- (void)duckCallFly {
    if (_flyBehaviorDelegate && [_flyBehaviorDelegate respondsToSelector:@selector(fly)]) {
        [_flyBehaviorDelegate fly];
    }
}

@end
