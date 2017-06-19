//
//  DecoratorCaculate.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/19.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "Caculate.h"

/**
 奖金的计算基类
 */
@interface DecoratorCaculate : Caculate

@property(strong,nonatomic)Caculate *caculate;
- (instancetype)initWithCaculate:(Caculate *)caculate;

@end
