//
//  JHObserverViewController.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/7.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "JHObserverViewController.h"
#import "JHSubscriptionServiceCenter.h"
#import "Customer.h"

@interface JHObserverViewController ()<JHSubscriptionServiceCenterProtocol>

@end

static NSString *newsPaper = @"newspaper";

@implementation JHObserverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"观察者模式";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createSubscriptionCenter];
}

- (void)createSubscriptionCenter {
    //创建订阅（报纸）
    [JHSubscriptionServiceCenter createSubscriptionNumber:newsPaper];
    //创建订阅者（即观察者）
    [JHSubscriptionServiceCenter addCustomer:self withSubscriptionNumber:newsPaper];
    //有一位其他顾客也订阅了这份报纸
    Customer *customer = [Customer new];
    [JHSubscriptionServiceCenter addCustomer:customer withSubscriptionNumber:newsPaper];
    //发行机构发送
    [JHSubscriptionServiceCenter sendMessage:@"发行第一份报纸" toSubscriptionNumber:newsPaper];
}

- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber {
    
    NSLog(@"\nHello，My Name is : %@ \n %@--%@",[self class],message,subscriptionNumber);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
