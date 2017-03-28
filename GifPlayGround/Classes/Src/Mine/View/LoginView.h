//
//  LoginView.h
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/12.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginView : UIView
@property (nonatomic,strong)UITextField *userTextField;
@property (nonatomic,strong)UITextField *pwdTextField;
@property (nonatomic,strong)UIButton *loginButton;
@property (nonatomic,strong)UIButton *forgotPwdButton;
@property (nonatomic,strong)UILabel *orLabel;
@property (nonatomic,strong)UILabel *tipsLabel;
@property (nonatomic,strong)UIButton *registerButton;
@property (nonatomic,strong)UILabel *otherLoginLabel;
@property (nonatomic,strong)UIButton *qqLoginButton;
@property (nonatomic,strong)UIButton *weiboLoginButton;
@end
