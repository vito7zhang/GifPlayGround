//
//  HomeViewController.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/8.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "HomeViewController.h"
#import "MaxGifViewController.h"
#import "HomeCell.h"
#import "HomeViewModel.h"

@interface HomeViewController ()<UITableViewDelegate>
@property (nonatomic,strong)HomeViewModel *homeViewModel;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"GIF部落";
    self.navigationController.navigationBar.barTintColor = MAIN_COLOR;
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:RGB(250, 250, 250),NSForegroundColorAttributeName,[UIFont systemFontOfSize:20 weight:0],NSFontAttributeName,nil]];
     self.view.backgroundColor = BACKGROUND_COLOR;
    
    
    UITableView *homeTableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:homeTableView];
    _homeViewModel = [HomeViewModel new];
    homeTableView.dataSource = self.homeViewModel;
    homeTableView.delegate = self;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    HomeModel *homeModel = _homeViewModel.homeArray[indexPath.row];
    CGFloat textHeight = [_homeViewModel sizeWithString:homeModel.descriptions font:NameFont maxSize:CGSizeMake(UI_SCREEN_WIDTH-40, 1000)].height;
    return 90+UI_SCREEN_WIDTH+textHeight;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    MaxGifViewController *maxGifVC = [MaxGifViewController new];
    maxGifVC.maxGifModel = [_homeViewModel maxGifModelWithTableView:tableView andIndexPath:indexPath];
    [self presentViewController:maxGifVC animated:YES completion:^{
    }];
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    [_homeViewModel setCell:(HomeCell *)cell withHomeModel:_homeViewModel.homeArray[indexPath.row]];
    [_homeViewModel settingFrameWithCell:(HomeCell *)cell];
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.tabBarController.tabBar.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
