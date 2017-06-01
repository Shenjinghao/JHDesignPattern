//
//  ViewController.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/5/31.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "ViewController.h"
#import "Duck.h"
#import "MallardDuck.h"
#import "RubberDuck.h"
#import "DuckCall.h"

@interface ViewController ()<DuckCallDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //针对接口编程
    [self programToAnInterface];
}

- (void)programToAnInterface {
    //此处用到了继承和协议protocol，实现了类似多态的效果，
    Duck *mallardDuck = [[MallardDuck alloc] init];
    [mallardDuck performFly];
    [mallardDuck performQuack];
    
    //可以进行选择或重新修改
    RubberDuck *rubberDuck = [[RubberDuck alloc] init];
    rubberDuck.flyBehaviorDelegate = rubberDuck.duck1;
    [rubberDuck performFly];
    [rubberDuck performQuack];
    
    //不使用继承实现
    DuckCall *duckCall = [[DuckCall alloc] init];
    duckCall.delegate = self;
    [duckCall performFly];
    
    
}

- (void)duckCallFly {
    NSLog(@"鸭鸣器：我不会飞");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
