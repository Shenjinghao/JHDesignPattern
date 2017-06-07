//
//  SingletonPattern.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/7.
//  Copyright © 2017年 SJH. All rights reserved.
//

#ifndef SingletonPattern_h
#define SingletonPattern_h


#endif /* SingletonPattern_h */

/*
 这里假设了实例的分享方法叫 shared"ClassName".
 
 因为方法名 shared"ClassName"是连在一起的，为了让宏能够正确替换掉签名中的“ClassName”需要在前面加上 ##
 
 当宏的定义超过一行时，在末尾加上“\”表示下一行也在宏定义范围内。
 

 */

#define singleton_interface(className) \
+ (className *)shared##className;


// @implementation
#define singleton_implementation(className) \
static className *_instance; \
+ (id)allocWithZone:(NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
return _instance; \
} \
+ (className *)shared##className \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[self alloc] init]; \
}); \
return _instance; \
}
