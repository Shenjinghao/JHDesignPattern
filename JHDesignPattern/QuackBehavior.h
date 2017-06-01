//
//  QuackBehavior.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/5/31.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 叫声的抽象超类
 */

@interface QuackBehavior : NSObject

- (void)quack;

@end

@interface MuteQuack : QuackBehavior

- (void)quack;

@end

@interface SQuack : QuackBehavior

- (void)quack;

@end
