//
//  DecoratorCaculate.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/19.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "DecoratorCaculate.h"

@implementation DecoratorCaculate

- (instancetype)initWithCaculate:(Caculate *)caculate {
    self = [super init];
    if (self) {
        self.caculate = caculate;
    }
    return self;
}

- (NSInteger)calculateSalary:(NSInteger)monthSales sumSales:(NSInteger)sumSales {
    return [self.caculate calculateSalary:monthSales sumSales:sumSales];
}

@end
