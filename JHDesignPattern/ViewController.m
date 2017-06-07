//
//  ViewController.m
//  JHDesignPattern
//
//  Created by Shenjinghao on 2017/5/31.
//  Copyright © 2017年 SJH. All rights reserved.
//

#import "ViewController.h"
#import "JHCollectionViewCell.h"
#import "JHStrategyViewController.h"
#import "JHDelegateViewController.h"
#import "JHSingletonViewController.h"
#import "JHObserverViewController.h"

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, copy) NSArray *dataArray;

@property (nonatomic, strong) UICollectionView *collectionView;

@end

static NSString *const cellId = @"collectionCellId";
static NSString *const header = @"collectionHeader";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.dataArray = @[@"策略模式", @"代理模式", @"单例模式", @"观察者模式"];

    [self createCollectionView];
    
}

- (void)createCollectionView {
    //自定义流水布局
    UICollectionViewFlowLayout *collectionFlowLayout = [[UICollectionViewFlowLayout alloc] init];
    //滑动方向
    collectionFlowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    //设置headerView的尺寸大小
    collectionFlowLayout.headerReferenceSize = CGSizeMake(self.view.frame.size.width, 60);
    //设置itemSize
    collectionFlowLayout.itemSize =CGSizeMake(self.view.frame.size.width / 2, 80);
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:collectionFlowLayout];
    self.collectionView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.collectionView];
    
    //注册collectionViewCell和header
    [self.collectionView registerClass:[JHCollectionViewCell class] forCellWithReuseIdentifier:cellId];
    [self.collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:header];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
}

#pragma mark dataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 4;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    UICollectionReusableView *collectionHeaderView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:header forIndexPath:indexPath];
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:collectionHeaderView.bounds];
    headerLabel.text = @"设计模式";
    headerLabel.textAlignment = NSTextAlignmentCenter;
    [collectionHeaderView addSubview:headerLabel];
    return collectionHeaderView;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JHCollectionViewCell *collectionCell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    collectionCell.countLabel.text = [NSString stringWithFormat:@"{%ld, %ld}",indexPath.section, indexPath.row];
    collectionCell.titleLabel.text = self.dataArray[indexPath.row];
    return collectionCell;
}

#pragma mark delegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    JHCollectionViewCell *cell = (JHCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    NSLog(@"%@",cell.countLabel.text);
    switch (indexPath.row) {
        case 0: {
            JHStrategyViewController *controller = [[JHStrategyViewController alloc] init];
            [self.navigationController pushViewController:controller animated:YES];
        }
            break;
        case 1: {
            JHDelegateViewController *controller = [[JHDelegateViewController alloc] init];
            [self.navigationController pushViewController:controller animated:YES];
        }
            break;
        case 2: {
            JHSingletonViewController *controller = [[JHSingletonViewController alloc] init];
            [self.navigationController pushViewController:controller animated:YES];
        }
            break;
        case 3: {
            JHObserverViewController *controller = [[JHObserverViewController alloc] init];
            [self.navigationController pushViewController:controller animated:YES];
        }
            break;
        default:
            break;
    }
    
}

#pragma mark UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(120, 90);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(10, 10, 10, 10);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
