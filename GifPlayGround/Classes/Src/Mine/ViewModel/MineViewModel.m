//
//  MineViewModel.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/12.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "MineViewModel.h"
#import "UIView+ViewController.h"
#import "HomeCell.h"

@implementation MineViewModel
-(instancetype)init{
    if (self = [super init]) {
        _headView = [[HeadView alloc]init];
        _homeViewModel = [HomeViewModel new];
        [self setData];
    }
    return self;
}

-(void)setData{
    _dataSource = [NSMutableArray array];
    NSArray *imagePathArray = @[@"http://tp2.sinaimg.cn/5187664653/50/40058043651/1",@"http://tp2.sinaimg.cn/3591355593/50/5729410237/1",@"http://tp4.sinaimg.cn/1642330551/50/5738933373/1",@"http://tp3.sinaimg.cn/3229125510/50/5693916311/1",@"http://tp1.sinaimg.cn/1291477752/50/5689317318/1"];
    NSArray *nameArray = @[@"张三",@"李四",@"王五",@"马六",@"田七"];
    NSArray *timeArray = @[@"今天 17：55",@"今天 13:02",@"1月8日",@"今天 17:29",@"今天 18:12"];
    NSArray *desciptionsArray = @[@"妈妈种的菜，妈妈做的饭",@"传承",@"浙江卫视跨年晚会，看看导播是怎么工作的，涨见识，牛逼",@"永远不要和专业排球手打篮球……把球给我，我要回家",@"你们好呀 你们吃饭了吗？"];
    NSArray *gifArray = @[@"http://ww2.sinaimg.cn/thumb180/005F4Uyxgw1ezte6h3tswj30dc0hs77b.jpg",@"http://ww2.sinaimg.cn/thumb180/d60fbcc9jw1eztl7fhp08j22192197wh.jpg",@"http://ww3.sinaimg.cn/thumb180/00638voqgw1ezt5mbvagsj30jg0eljsa.jpg",@"http://ww4.sinaimg.cn/thumb180/005F4Uyxgw1ezte6kuvo0j30dc0hstau.jpg",@"http://ww2.sinaimg.cn/thumb180/4cfa62f8jw1eztermb8rwj21f01w01jz.jpg"];
    NSArray *commentsArray = @[@[@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1"],@[@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1"],@[@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1"],@[@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1"],@[@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1"]];
    
    for (int i = 0; i < 5; i++) {
        HomeModel *homeModel = [HomeModel new];
        homeModel.imagePath = imagePathArray[i];
        homeModel.name = nameArray[i];
        homeModel.time = timeArray[i];
        homeModel.descriptions = desciptionsArray[i];
        homeModel.gif = gifArray[i];
        homeModel.zan = 32;
        homeModel.zanSelected = NO;
        homeModel.comments = commentsArray[i];
        homeModel.comment = homeModel.comments.count;
        [_dataSource addObject:homeModel];
    }
    
}

-(void)setHeadWithTableView:(UITableView *)tableView andHeadView:(HeadView *)headView{
    headView.touxiangImageView.layer.cornerRadius=headView.touxiangImageView.frame.size.width/2;
    UIView* heardView=[[UIView alloc]initWithFrame:headView.backGroundImageView.frame];
    tableView.tableHeaderView=heardView;
    [tableView addSubview:headView.backGroundImageView];
    [tableView addSubview:headView.touxiangImageView];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HomeCell *cell = [HomeViewModel cellWithTableView:tableView];
    HomeModel *homeModel = self.dataSource[indexPath.row];
    
    [self.homeViewModel setCell:cell withHomeModel:homeModel];
    [self.homeViewModel settingFrameWithCell:cell];
    self.cellHeight = cell.cellHeight;

    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}
@end
