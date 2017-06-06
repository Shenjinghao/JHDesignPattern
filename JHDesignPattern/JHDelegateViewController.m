//
//  JHDelegateViewController.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/6/5.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "JHDelegateViewController.h"
#import "JHTableViewDelegate.h"

@interface JHDelegateViewController ()

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) JHTableViewDelegate *myDelegate;

@end

@implementation JHDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"代理模式";
    self.tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    
    [self createDelegate];
}

- (void)createDelegate {
    
    // 初始化测试数据
    NSMutableArray *dataArray = [NSMutableArray array];
    for (int i = 0; i < 45; i++) {
        [dataArray addObject:[NSString stringWithFormat:@"第 %d 行", i]];
    }
    self.myDelegate = [JHTableViewDelegate createTableViewWWithDataArray:dataArray cellDidSelectedBlock:^(NSIndexPath *indexPath) {
        NSLog(@"点击了第 %ld 行", indexPath.row);
    }];
    
    self.tableView.delegate = self.myDelegate;
    self.tableView.dataSource = self.myDelegate;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
