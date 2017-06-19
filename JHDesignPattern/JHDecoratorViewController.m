//
//  JHDecoratorViewController.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/12.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "JHDecoratorViewController.h"
#import "Caculate.h"
#import "BasicWage.h"
#import "DecoratorCaculate.h"
#import "MonthBonusDecorator.h"
#import "GroupBonusDecorator.h"

@interface JHDecoratorViewController ()

@end

@implementation JHDecoratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //基本工资，被装饰对象
    Caculate *c1 = [BasicWage new];
    
    //装饰器
    DecoratorCaculate *d1 = [[MonthBonusDecorator alloc]initWithCaculate:c1];
    NSInteger salary1 = [d1 calculateSalary:10000 sumSales:12212];
    NSLog(@"\n奖金组合方式：当月销售奖金 \n 总工资 = %zd", salary1);
    
    NSLog(@"\n=============================================================================");
    
    DecoratorCaculate *d2 = [[MonthBonusDecorator alloc]initWithCaculate:c1];
    DecoratorCaculate *d3 = [[GroupBonusDecorator alloc]initWithCaculate:d2];
    NSInteger salary2 = [d3 calculateSalary:23111 sumSales:231111];
    NSLog(@"\n奖金组合方式：当月销售奖金 + 团队奖金 \n 总工资 = %zd", salary2);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
