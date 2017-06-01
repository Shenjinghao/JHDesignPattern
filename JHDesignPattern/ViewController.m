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

@interface ViewController ()

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
    
    Duck *rubberDuck = [[RubberDuck alloc] init];
    [rubberDuck performFly];
    [rubberDuck performQuack];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
