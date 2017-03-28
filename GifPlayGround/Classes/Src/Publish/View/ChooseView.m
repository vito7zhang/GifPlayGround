//
//  ChooseView.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/13.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "ChooseView.h"

@implementation ChooseView

-(instancetype)init{
    if (self = [super init]) {
        [self addSubview:self.drawButton];
        [self addSubview:self.backButton];
        [self addSubview:self.pictureButton];
        [self addSubview:self.videoButton];
    }
    return self;
}

-(UIButton *)drawButton{
    if (!_drawButton) {
        _drawButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _drawButton.frame = CGRectMake((UI_SCREEN_WIDTH-210)/4, UI_SCREEN_HEIGHT/2-35, 70, 70);
        _drawButton.layer.masksToBounds = YES;
        _drawButton.layer.cornerRadius = 35.0f;
        _drawButton.backgroundColor = MAIN_COLOR;
        [_drawButton setImage:[UIImage imageNamed:@"draw"] forState:UIControlStateNormal];
    }
    return _drawButton;
}

-(UIButton *)pictureButton{
    if (!_pictureButton) {
        _pictureButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _pictureButton.frame = CGRectMake((UI_SCREEN_WIDTH-210)/4*2+70, UI_SCREEN_HEIGHT/2-35, 70, 70);
        _pictureButton.layer.masksToBounds = YES;
        _pictureButton.layer.cornerRadius = 35.0f;
        _pictureButton.backgroundColor = RGB(25, 255,90);
        [_pictureButton setImage:[UIImage imageNamed:@"picture"] forState:UIControlStateNormal];
    }
    return _pictureButton;
}

-(UIButton *)videoButton{
    if (!_videoButton) {
        _videoButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _videoButton.frame = CGRectMake((UI_SCREEN_WIDTH-210)/4*3+140, UI_SCREEN_HEIGHT/2-35, 70, 70);
        _videoButton.layer.masksToBounds = YES;
        _videoButton.layer.cornerRadius = 35.0f;
        _videoButton.backgroundColor = RGB(25, 222, 255);
        [_videoButton setImage:[UIImage imageNamed:@"video"] forState:UIControlStateNormal];
    }
    return _videoButton;
}

-(UIButton *)backButton{
    if (!_backButton) {
        _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _backButton.frame = CGRectMake(0, UI_SCREEN_HEIGHT-49, UI_SCREEN_WIDTH, 49);
        _backButton.backgroundColor = RGB(250, 250, 250);
        [_backButton setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    }
    return _backButton;
}
@end
