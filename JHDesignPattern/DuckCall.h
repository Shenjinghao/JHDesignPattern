//
//  DuckCall.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/1.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DuckCallDelegate <NSObject>

- (void)duckCallFly;

@end

/**
 鸭鸣器，不是继承自duck
 */
@interface DuckCall : NSObject

@property (nonatomic, weak) id<DuckCallDelegate> delegate;

- (void)performFly;

@end
