//
//  QuackBehavior.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/5/31.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "QuackBehavior.h"

@implementation QuackBehavior

- (void)quack {
    
}

@end

@implementation MuteQuack

- (void)quack {
    NSLog(@"Quack");
}

@end

@implementation SQuack

- (void)quack {
    NSLog(@"Silence");
}

@end
