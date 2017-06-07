//
//  JHSingleton.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/6.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingletonPattern.h"



/**
 使用宏的方式来声明和实现单例
 */
@interface JHSingleton : NSObject


singleton_interface(JHSingleton);

@end
