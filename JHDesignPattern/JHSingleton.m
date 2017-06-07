//
//  JHSingleton.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/6.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "JHSingleton.h"

@implementation JHSingleton

singleton_implementation(JHSingleton);

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"单例模式");
    }
    return self;
}

@end
