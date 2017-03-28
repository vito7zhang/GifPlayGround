//
//  ForgetView.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/15.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "ForgetView.h"

@implementation ForgetView

-(instancetype)init{
    if (self = [super init]) {
        self.backgroundColor = BACKGROUND_COLOR;
        [self addSubview:self.userTextField];
        [self addSubview:self.nextButton];
        [self addSubview:self.capechaTextField];
        [self addSubview:self.confirmButton];
    }
    return self;
}

-(UITextField *)userTextField{
    if (!_userTextField) {
        _userTextField = [[UITextField alloc]initWithFrame:CGRectMake(30, 20, UI_SCREEN_WIDTH-60, 40)];
        _userTextField.layer.masksToBounds = YES;
        _userTextField.layer.cornerRadius = 5.0f;
        _userTextField.placeholder = @"账号/邮箱";
        _userTextField.backgroundColor = RGB(250, 250, 250);
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 30)];
        _userTextField.leftView = view;
        _userTextField.leftViewMode = UITextFieldViewModeAlways;
        _userTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }
    return _userTextField;
}
-(UIButton *)nextButton{
    if (!_nextButton) {
        _nextButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _nextButton.frame = CGRectMake(30, 80, UI_SCREEN_WIDTH-60, 40);        
        [_nextButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _nextButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _nextButton.layer.masksToBounds = YES;
        _nextButton.layer.cornerRadius = 5.0f;
        _nextButton.layer.shadowOffset = CGSizeMake(1, 1);
        _nextButton.layer.shadowOpacity = 0.8;
        _nextButton.layer.shadowColor = RGB(243, 124, 124).CGColor;
        [_nextButton setTitle:@"发送验证码" forState:UIControlStateNormal];
        _nextButton.backgroundColor = MAIN_COLOR;
    }
    return _nextButton;
}

-(UITextField *)capechaTextField{
    if (!_capechaTextField) {
        _capechaTextField = [[UITextField alloc]initWithFrame:CGRectMake(30, 140, UI_SCREEN_WIDTH-60, 40)];
        _capechaTextField.layer.masksToBounds = YES;
        _capechaTextField.layer.cornerRadius = 5.0f;
        _capechaTextField.placeholder = @"验证码";
        _capechaTextField.backgroundColor = RGB(250, 250, 250);
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 30)];
        _capechaTextField.leftView = view;
        _capechaTextField.leftViewMode = UITextFieldViewModeAlways;
        _capechaTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }
    return _capechaTextField;
}
-(UIButton *)confirmButton{
    if (!_confirmButton) {
        _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _confirmButton.frame = CGRectMake(30, 190, UI_SCREEN_WIDTH-60, 40);
        [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _confirmButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _confirmButton.layer.masksToBounds = YES;
        _confirmButton.layer.cornerRadius = 5.0f;
        _confirmButton.layer.shadowOffset = CGSizeMake(1, 1);
        _confirmButton.layer.shadowOpacity = 0.8;
        _confirmButton.layer.shadowColor = RGB(243, 124, 124).CGColor;
        [_confirmButton setTitle:@"确定" forState:UIControlStateNormal];
        _confirmButton.backgroundColor = MAIN_COLOR;
    }
    return _confirmButton;
}

@end
