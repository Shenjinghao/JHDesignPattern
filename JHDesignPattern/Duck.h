//
//  Duck.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/2.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyBehaviorInterface.h"

@interface Duck : NSObject
{
    id<FlyBehaviorInterface> flyBehaviorDelegate;
}

//@property (nonatomic, weak) id<FlyBehaviorInterface> flyBehaviorDelegate;


- (void)performFly;

- (void)setFlyBehaviorDelegate:(id<FlyBehaviorInterface>)myFlyBehaviorDelegate;

@end
