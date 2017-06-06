//
//  JHTableViewDelegate.h
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/5.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



/**
 代理是面向过程的回调，block是面向结果的回调。

 @param indexPath xx
 */
typedef void(^CellDidSelectedBlock)(NSIndexPath *indexPath);

@interface JHTableViewDelegate : NSObject <UITableViewDelegate, UITableViewDataSource>

+ (instancetype)createTableViewWWithDataArray:(NSArray *)dataArray
                         cellDidSelectedBlock:(CellDidSelectedBlock)cellDidSelectedBlock;



@end
