//
//  Caculate.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/19.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 计算工资的基类
 */
@interface Caculate : NSObject

-(NSInteger)calculateSalary:(NSInteger)monthSales  sumSales:(NSInteger)sumSales;

@end
