//
//  MonthBonusDecorator.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/19.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "MonthBonusDecorator.h"

@implementation MonthBonusDecorator

-(NSInteger)calculateSalary:(NSInteger)monthSales sumSales:(NSInteger)sumSales {
    NSInteger salary = [self.caculate calculateSalary:monthSales sumSales:sumSales];
    NSInteger bonus = monthSales * 0.03;
    NSLog(@"当月销售奖金：%zd", bonus);
    return salary += bonus;
}

@end
