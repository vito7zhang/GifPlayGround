//
//  RegisterViewController.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/13.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "RegisterViewController.h"
#import "RegisterView.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"注册";
    self.navigationController.navigationBar.barTintColor = MAIN_COLOR;
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:RGB(250, 250, 250),NSForegroundColorAttributeName,[UIFont systemFontOfSize:20 weight:0],NSFontAttributeName,nil]];
    self.view.backgroundColor = BACKGROUND_COLOR;
    self.navigationController.navigationBar.tintColor = RGB(250, 250, 250);
    
    
    
    RegisterView *registerView = [[RegisterView alloc]init];
    registerView.frame = CGRectMake(0, 64, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT-64);
    [self.view addSubview:registerView];
    
    
    [registerView.registerButton addTarget:self action:@selector(registerAction:) forControlEvents:UIControlEventTouchUpInside];
    [registerView.photoButton addTarget:self action:@selector(photoAction:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)photoAction:(UIButton *)sender{
    NSLog(@"%s",__FUNCTION__);
}
-(void)registerAction:(UIButton *)sender{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
