//
//  JHTableViewDelegate.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/5.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "JHTableViewDelegate.h"

static NSString *const identifier = @"cellIdentifier";

@interface JHTableViewDelegate ()

@property (nonatomic, copy) CellDidSelectedBlock cellDidSelectedBlock;

@property (nonatomic, strong) NSArray *dataArray;

@end

@implementation JHTableViewDelegate

+(instancetype)createTableViewWWithDataArray:(NSArray *)dataArray cellDidSelectedBlock:(CellDidSelectedBlock)cellDidSelectedBlock {
    return [[[self class] alloc] initTableViewDelegateWithDataArray:dataArray cellDidSelectedBlock:cellDidSelectedBlock];
}

- (instancetype)initTableViewDelegateWithDataArray:(NSArray *)dataArray cellDidSelectedBlock:(CellDidSelectedBlock)cellDidSelectedBlock {
    self = [super init];
    if (self) {
        self.dataArray = dataArray;
        self.cellDidSelectedBlock = cellDidSelectedBlock;
    }
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    // 将点击事件通过block的方式传递出去
    self.cellDidSelectedBlock(indexPath);
}




@end
