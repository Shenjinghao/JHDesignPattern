//
//  Customer.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/7.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "Customer.h"

@implementation Customer

- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber {

    NSLog(@"\nHello，My Name is : %@ \n %@--%@",[self class],message,subscriptionNumber);
}

@end
