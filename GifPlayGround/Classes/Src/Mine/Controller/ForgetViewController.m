//
//  ForgetViewController.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/15.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "ForgetViewController.h"
#import "ForgetView.h"

@interface ForgetViewController ()
{
    ForgetView *forgetView;
}
@end

@implementation ForgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"找回密码";
    self.navigationController.navigationBar.barTintColor = MAIN_COLOR;
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:RGB(250, 250, 250),NSForegroundColorAttributeName,[UIFont systemFontOfSize:20 weight:0],NSFontAttributeName,nil]];
    self.navigationController.navigationBar.tintColor = RGB(250, 250, 250);
    
    forgetView = [[ForgetView alloc]init];
    forgetView.frame = CGRectMake(0, 64, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT-64);
    [self.view addSubview:forgetView];
    
    [self setTarget];
}

-(void)setTarget{
    [forgetView.confirmButton addTarget:self action:@selector(confimeAction:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)confimeAction:(UIButton *)sender{
    if ([forgetView.capechaTextField.text isEqualToString:@"123"]) {
        [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    }else{
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"验证码错误" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:cancelAction];
        [alertController addAction:okAction];
        [self presentViewController:alertController animated:YES completion:nil];
    }
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
