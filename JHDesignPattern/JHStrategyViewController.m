//
//  JHStrategyViewController.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/5.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "JHStrategyViewController.h"
#import "Duck.h"
#import "MallardDuck.h"
#import "RubberDuck.h"
#import "DuckCall.h"
#import "FlyWithNoWay.h"


@interface JHStrategyViewController ()

@end

@implementation JHStrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"策略模式";
    self.view.backgroundColor = [UIColor whiteColor];
    
    //策略模式
    [self programToAnInterface];
}



- (void)programToAnInterface {
    //此处用到了继承和协议protocol
    Duck *mallardDuck = [[MallardDuck alloc] init];
    [mallardDuck performFly];
    
    //可以进行选择或重新修改
    [mallardDuck setFlyBehaviorDelegate:[[FlyWithNoWay alloc] init]];
    [mallardDuck performFly];
    
    Duck *rubberDuck = [[RubberDuck alloc] init];
    [rubberDuck performFly];
    
    //不使用继承实现
    DuckCall *duckCall = [[DuckCall alloc] init];
    duckCall.flyBehaviorDelegate = (id)self;
    [duckCall duckCallFly];
    
}

-(void)fly
{
    NSLog(@"鸭鸣器：可能会飞!");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
