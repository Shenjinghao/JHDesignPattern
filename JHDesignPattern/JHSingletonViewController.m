//
//  JHSingletonViewController.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/7.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "JHSingletonViewController.h"
#import "JHSingleton.h"

@interface JHSingletonViewController ()

@end

@implementation JHSingletonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"代理模式";
    self.view.backgroundColor = [UIColor whiteColor];
    
    //只能用这种构造方法来初始化，有且只有一个对象
    JHSingleton *singleton = [JHSingleton sharedJHSingleton];
    
    JHSingleton *singleton1 = [JHSingleton sharedJHSingleton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
