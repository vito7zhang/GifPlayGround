//
//  LoginViewController.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/12.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "ForgetViewController.h"
#import "LoginView.h"


@interface LoginViewController ()
{
    LoginView *loginView;
}
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登陆";
    self.navigationController.navigationBar.barTintColor = MAIN_COLOR;
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:RGB(250, 250, 250),NSForegroundColorAttributeName,[UIFont systemFontOfSize:20 weight:0],NSFontAttributeName,nil]];
    self.view.backgroundColor = BACKGROUND_COLOR;
    self.navigationController.navigationBar.tintColor = RGB(250, 250, 250);
    
    
    loginView = [[LoginView alloc]init];
    loginView.frame = CGRectMake(0, 64, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT);
    [self setTarget];
    [self.view addSubview:loginView];
    
    

}
-(void)setTarget{
    [loginView.loginButton addTarget:self action:@selector(loginAction:) forControlEvents:UIControlEventTouchUpInside];
    [loginView.registerButton addTarget:self action:@selector(registerAction:) forControlEvents:UIControlEventTouchUpInside];
    [loginView.forgotPwdButton addTarget:self action:@selector(forgetPwdAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)]];
}



-(void)forgetPwdAction:(UIButton *)sender{
    [self.navigationController pushViewController:[ForgetViewController new] animated:YES];
}
-(void)tapAction:(UITapGestureRecognizer *)tap{
    [loginView.userTextField resignFirstResponder];
    [loginView.pwdTextField resignFirstResponder];
}
-(void)loginAction:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)registerAction:(UIButton *)sender{
    [self.navigationController pushViewController:[RegisterViewController new] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
