//
//  GroupBonusDecorator.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/19.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "GroupBonusDecorator.h"

@implementation GroupBonusDecorator

- (NSInteger)calculateSalary:(NSInteger)monthSales sumSales:(NSInteger)sumSales {
    NSInteger salary = [self.caculate calculateSalary:monthSales sumSales:sumSales];
    NSInteger bonus = 100000 * 0.01;
    NSLog(@"团队奖金：%zd", bonus);
    return salary += bonus;
}

@end
