//
//  MainTabBarViewController.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/8.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "HomeViewController.h"
#import "PublishViewController.h"
#import "MineViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.tintColor = MAIN_COLOR;
    HomeViewController *homeVC = [HomeViewController new];
    PublishViewController *publishVC = [PublishViewController new];
    MineViewController *mineVC = [MineViewController new];
    NSArray *controllers = @[homeVC,publishVC,mineVC];
    NSArray *controllersName = @[@"GIF部落",@"发布GIF",@"我的"];
    NSArray *iconArray = @[[UIImage imageNamed:@"home"],[UIImage imageNamed:@"arrow-up"],[UIImage imageNamed:@"user"]];
    NSMutableArray *naControllers = [NSMutableArray array];
    for (int i = 0; i < controllers.count; i++) {
        UINavigationController *na = [[UINavigationController alloc]initWithRootViewController:controllers[i]];
        [na.tabBarItem setTitle:controllersName[i]];
        [na.tabBarItem setImage:iconArray[i]];
        [naControllers addObject:na];
    }
    
    self.viewControllers = naControllers;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
