//
//  PublishViewController.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/8.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "PublishViewController.h"
#import "DrawViewController.h"
#import "PictureViewController.h"
#import "VideoViewController.h"
#import "ChooseView.h"

@interface PublishViewController ()

@end

@implementation PublishViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = BACKGROUND_COLOR;
    
    ChooseView *chooseView = [[ChooseView alloc]init];
    chooseView.frame = self.view.frame;
    [self.view addSubview:chooseView];
    
    [chooseView.backButton addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    [chooseView.drawButton addTarget:self action:@selector(drawAction:) forControlEvents:UIControlEventTouchUpInside];
    [chooseView.pictureButton addTarget:self action:@selector(pictureAction:) forControlEvents:UIControlEventTouchUpInside];
    [chooseView.videoButton addTarget:self action:@selector(videoAction:) forControlEvents:UIControlEventTouchUpInside];
}


-(void)drawAction:(UIButton *)sender{
    [self.navigationController pushViewController:[DrawViewController new] animated:YES];
}
-(void)pictureAction:(UIButton *)sender{
    [self.navigationController pushViewController:[PictureViewController new] animated:NO];
}
-(void)videoAction:(UIButton *)sender{
    [self.navigationController pushViewController:[VideoViewController new] animated:YES];
}
-(void)backAction:(UIButton *)sender{
    [self.tabBarController setSelectedIndex:0];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
    self.tabBarController.tabBar.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
