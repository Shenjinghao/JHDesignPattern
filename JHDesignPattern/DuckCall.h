//
//  DuckCall.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/2.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyBehaviorInterface.h"

/**
 不是鸭子，胜似鸭子
 */
@interface DuckCall : NSObject<FlyBehaviorInterface>

@property (nonatomic, weak) id<FlyBehaviorInterface> flyBehaviorDelegate;

- (void)duckCallFly;


@end
