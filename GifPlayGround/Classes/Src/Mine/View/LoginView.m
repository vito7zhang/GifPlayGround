//
//  LoginView.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/12.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView
-(instancetype)init{
    if (self = [super init]) {
        self.backgroundColor = BACKGROUND_COLOR;
        [self addSubview:self.userTextField];
        [self addSubview:self.pwdTextField];
        [self addSubview:self.loginButton];
        [self addSubview:self.forgotPwdButton];
        [self addSubview:self.orLabel];
        [self addSubview:self.tipsLabel];
        [self addSubview:self.registerButton];
        [self addSubview:self.otherLoginLabel];
        [self addSubview:self.qqLoginButton];
        [self addSubview:self.weiboLoginButton];
    }
    return self;
}

-(UITextField *)userTextField{
    if (!_userTextField) {
        _userTextField = [[UITextField alloc]initWithFrame:CGRectMake(30, 30, [UIScreen mainScreen].bounds.size.width-60, 40)];
        _userTextField.placeholder = @"账号";
        _userTextField.backgroundColor = RGB(250, 250, 250);
        _userTextField.layer.masksToBounds = YES;
        _userTextField.layer.cornerRadius = 5.0f;
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 30)];
        _userTextField.leftViewMode = UITextFieldViewModeAlways;
        _userTextField.leftView = view;
        _userTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }
    return _userTextField;
}
-(UITextField *)pwdTextField{
    if (!_pwdTextField) {
        _pwdTextField = [[UITextField alloc]initWithFrame:CGRectMake(30, 78, [UIScreen mainScreen].bounds.size.width-60, 40)];
        _pwdTextField.secureTextEntry = YES;
        _pwdTextField.placeholder = @"密码";
        _pwdTextField.backgroundColor = RGB(250, 250, 250);
        _pwdTextField.layer.masksToBounds = YES;
        _pwdTextField.layer.cornerRadius = 5.0f;
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 30)];
        _pwdTextField.leftViewMode = UITextFieldViewModeAlways;
        _pwdTextField.leftView = view;
        _pwdTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }
    return _pwdTextField;
}
-(UIButton *)loginButton{
    if (!_loginButton) {
        _loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _loginButton.frame = CGRectMake(30, 130, [UIScreen mainScreen].bounds.size.width-60, 40);
        [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _loginButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _loginButton.layer.masksToBounds = YES;
        _loginButton.layer.cornerRadius = 5.0f;
        _loginButton.layer.shadowOffset = CGSizeMake(1, 1);
        _loginButton.layer.shadowOpacity = 0.8;
        _loginButton.layer.shadowColor = RGB(243, 124, 124).CGColor;
        [_loginButton setTitle:@"登        陆" forState:UIControlStateNormal];
        _loginButton.backgroundColor = MAIN_COLOR;
    }
    return _loginButton;
}
-(UIButton *)forgotPwdButton{
    if (!_forgotPwdButton) {
        _forgotPwdButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _forgotPwdButton.frame = CGRectMake(30, 175, 60, 30);
        _forgotPwdButton.titleLabel.font = [UIFont systemFontOfSize:12 weight:0];
        [_forgotPwdButton setTitleColor:MAIN_COLOR forState:UIControlStateNormal];
        [_forgotPwdButton setTitle:@"忘记密码？" forState:UIControlStateNormal];
    }
    return _forgotPwdButton;
}

-(UILabel *)orLabel{
    if (!_orLabel) {
        _orLabel = [[UILabel alloc]initWithFrame:CGRectMake(30, 210, UI_SCREEN_WIDTH-60, 20)];
        _orLabel.text = @"或者";
        _orLabel.font = [UIFont systemFontOfSize:12 weight:0];
        _orLabel.textAlignment = NSTextAlignmentCenter;
        _orLabel.textColor = MAINTEXT_COLOR;
        UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 10, UI_SCREEN_WIDTH/2-45, 1)];
        view1.backgroundColor = RGB(225, 225, 225);
        UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(UI_SCREEN_WIDTH/2-15, 10, UI_SCREEN_WIDTH/2-45, 1)];
        view2.backgroundColor = RGB(225, 225, 225);
        [_orLabel addSubview:view1];
        [_orLabel addSubview:view2];
    }
    return _orLabel;
}
-(UILabel *)tipsLabel{
    if (!_tipsLabel) {
        _tipsLabel = [[UILabel alloc]initWithFrame:CGRectMake(30, 240, UI_SCREEN_WIDTH-60, 45)];
        _tipsLabel.textAlignment = NSTextAlignmentCenter;
        _tipsLabel.textColor = MAINTEXT_COLOR;
        _tipsLabel.font = [UIFont systemFontOfSize:17];
        _tipsLabel.text = @"需要一个新账号？";
    }
    return _tipsLabel;
}
-(UIButton *)registerButton{
    if (!_registerButton) {
        _registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _registerButton.frame = CGRectMake(30, 300, UI_SCREEN_WIDTH-60, 40);
        [_registerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _registerButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _registerButton.layer.masksToBounds = YES;
        _registerButton.layer.cornerRadius = 5.0f;
        _registerButton.layer.shadowOffset = CGSizeMake(1, 1);
        _registerButton.layer.shadowOpacity = 0.8;
        _registerButton.layer.shadowColor = RGB(243, 124, 124).CGColor;
        [_registerButton setTitle:@"注        册" forState:UIControlStateNormal];
        _registerButton.backgroundColor = MAIN_COLOR;
    }
    return _registerButton;
}

-(UILabel *)otherLoginLabel{
    if (!_otherLoginLabel) {
        _otherLoginLabel = [[UILabel alloc]initWithFrame:CGRectMake(30, UI_SCREEN_HEIGHT-124-104, UI_SCREEN_WIDTH-60, 20)];
        _otherLoginLabel.text = @"第三方登陆";
        _otherLoginLabel.font = [UIFont systemFontOfSize:12 weight:0];
        _otherLoginLabel.textAlignment = NSTextAlignmentCenter;
        _otherLoginLabel.textColor = MAINTEXT_COLOR;
        UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 10, UI_SCREEN_WIDTH/2-45, 1)];
        view1.backgroundColor = RGB(225, 225, 225);
        UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(UI_SCREEN_WIDTH/2-15, 10, UI_SCREEN_WIDTH/2-45, 1)];
        view2.backgroundColor = RGB(225, 225, 225);
        [_otherLoginLabel addSubview:view1];
        [_otherLoginLabel addSubview:view2];
    }
    return _otherLoginLabel;
}

-(UIButton *)qqLoginButton{
    if (!_qqLoginButton) {
        _qqLoginButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _qqLoginButton.frame = CGRectMake(30, UI_SCREEN_HEIGHT-84-104, 64, 64);
        [_qqLoginButton setImage:[UIImage imageNamed:@"QQ_icon"] forState:UIControlStateNormal];
    }
    return _qqLoginButton;
}

-(UIButton *)weiboLoginButton{
    if (!_weiboLoginButton) {
        _weiboLoginButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _weiboLoginButton.frame = CGRectMake(UI_SCREEN_WIDTH-94, UI_SCREEN_HEIGHT-84-104, 64, 64);
        [_weiboLoginButton setImage:[UIImage imageNamed:@"weibo_icon"] forState:UIControlStateNormal];
    }
    return _weiboLoginButton;
}


@end
