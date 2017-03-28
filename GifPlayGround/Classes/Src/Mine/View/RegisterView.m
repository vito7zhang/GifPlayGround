//
//  RegisterView.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/13.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "RegisterView.h"

@implementation RegisterView
-(instancetype)init{
    if (self = [super init]) {
        self.backgroundColor = BACKGROUND_COLOR;
        [self addSubview:self.photoButton];
        [self addSubview:self.userTextField];
        [self addSubview:self.pwdTextField];
        [self addSubview:self.emailTextField];
        [self addSubview:self.registerButton];
    }
    return self;
}

-(UIButton *)photoButton{
    if (!_photoButton) {
        _photoButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _photoButton.frame = CGRectMake(UI_SCREEN_WIDTH/2-50, 20, 100, 100);
        _photoButton.layer.borderColor = [UIColor grayColor].CGColor;
        _photoButton.layer.borderWidth = 1.0;
        _photoButton.layer.masksToBounds = YES;
        _photoButton.layer.cornerRadius = 5.0;
        _photoButton.backgroundColor = [UIColor whiteColor];
        
        
        UIImageView *touxiangImageView = [[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 90, 90)];
        touxiangImageView.image = [UIImage imageNamed:@"usergray"];
        [_photoButton addSubview:touxiangImageView];
        
        UIImageView *cemera = [[UIImageView alloc]initWithFrame:CGRectMake(70, 70, 30, 30)];
        cemera.image = [UIImage imageNamed:@"camera"];
        [_photoButton addSubview:cemera];
    }
    return _photoButton;
}

-(UITextField *)userTextField{
    if (!_userTextField) {
        _userTextField = [[UITextField alloc]initWithFrame:CGRectMake(30, 150, UI_SCREEN_WIDTH-60, 40)];
        _userTextField.layer.masksToBounds = YES;
        _userTextField.layer.cornerRadius = 5.0f;
        _userTextField.placeholder = @"账号";
        _userTextField.leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 50)];
        _userTextField.leftViewMode = UITextFieldViewModeAlways;
        _userTextField.backgroundColor = RGB(250, 250, 250);
        _userTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }
    return _userTextField;
}

-(UITextField *)pwdTextField{
    if (!_pwdTextField) {
        _pwdTextField = [[UITextField alloc]initWithFrame:CGRectMake(30, 195, UI_SCREEN_WIDTH-60, 40)];
        _pwdTextField.layer.masksToBounds = YES;
        _pwdTextField.layer.cornerRadius = 5.0f;
        _pwdTextField.placeholder = @"密码";
        _pwdTextField.leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 50)];
        _pwdTextField.leftViewMode = UITextFieldViewModeAlways;
        _pwdTextField.backgroundColor = RGB(250, 250, 250);
        _pwdTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }
    return _pwdTextField;
}
-(UITextField *)emailTextField{
    if (!_emailTextField) {
        _emailTextField = [[UITextField alloc]initWithFrame:CGRectMake(30, 240, UI_SCREEN_WIDTH-60, 40)];
        _emailTextField.layer.masksToBounds = YES;
        _emailTextField.layer.cornerRadius = 5.0f;
        _emailTextField.placeholder = @"邮箱";
        _emailTextField.leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 50)];
        _emailTextField.leftViewMode = UITextFieldViewModeAlways;
        _emailTextField.backgroundColor = RGB(250, 250, 250);
        _emailTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }
    return _emailTextField;
}
-(UIButton *)registerButton{
    if (!_registerButton) {
        _registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _registerButton.frame = CGRectMake(30, 290, [UIScreen mainScreen].bounds.size.width-60, 40);
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

@end
