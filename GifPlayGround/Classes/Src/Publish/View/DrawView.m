//
//  DrawView.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/14.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

-(instancetype)init{
    if (self = [super init]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.drawScrollView];
        [self addSubview:self.buttonView];
        [self addSubview:self.colorScrollView];
        [self addSubview:self.toolSelectView];
    }
    return self;
}

-(UIView *)buttonView{
    if (!_buttonView) {
        _buttonView = [[UIView alloc]init];
        _buttonView.frame = CGRectMake(0, UI_SCREEN_HEIGHT-49, UI_SCREEN_WIDTH, 49);
        _buttonView.backgroundColor = BACKGROUND_COLOR;
        [_buttonView addSubview:self.colorButton];
        [_buttonView addSubview:self.toolButton];
        [_buttonView addSubview:self.clearButton];
        [_buttonView addSubview:self.delectButton];
        [_buttonView addSubview:self.lockButton];
    }
    return _buttonView;
}
-(UIButton *)colorButton{
    if (!_colorButton) {
        _colorButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _colorButton.frame = CGRectMake(20, 0, 49, 49);
        [_colorButton setImage:[UIImage imageNamed:@"color_wheel"] forState:UIControlStateNormal];
    }
    return _colorButton;
}
-(UIButton *)toolButton{
    if (!_toolButton) {
        _toolButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _toolButton.frame = CGRectMake(20+49+(UI_SCREEN_WIDTH-49*5-40)/4, 0, 49, 49);
        [_toolButton setImage:[UIImage imageNamed:@"tools"] forState:UIControlStateNormal];
    }
    return _toolButton;
}
-(UIButton *)clearButton{
    if (!_clearButton) {
        _clearButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _clearButton.frame = CGRectMake(20+49*2+(UI_SCREEN_WIDTH-49*5-40)/4*2, 0,49 , 49);
        [_clearButton setImage:[UIImage imageNamed:@"delete"] forState:UIControlStateNormal];
    }
    return _clearButton;
}
-(UIButton *)delectButton{
    if (!_delectButton) {
        _delectButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _delectButton.frame = CGRectMake(20+49*3+(UI_SCREEN_WIDTH-49*5-40)/4*3, 0, 49, 49);
        [_delectButton setImage:[UIImage imageNamed:@"arrow-left"] forState:UIControlStateNormal];
    }
    return _delectButton;
}
-(UIButton *)lockButton{
    if (!_lockButton) {
        _lockButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _lockButton.frame = CGRectMake(20+49*4+(UI_SCREEN_WIDTH-49*5-40)/4*4, 0, 49, 49);
        [_lockButton setImage:[UIImage imageNamed:@"unlocked"] forState:UIControlStateNormal];
        [_lockButton setImage:[UIImage imageNamed:@"locked"] forState:UIControlStateSelected];
    }
    return _lockButton;
}
-(UIScrollView *)colorScrollView{
    if (!_colorScrollView) {
        _colorScrollView = [[UIScrollView alloc]init];
        _colorScrollView.backgroundColor = BACKGROUND_COLOR;
        _colorScrollView.frame = CGRectMake(0, UI_SCREEN_HEIGHT-100, UI_SCREEN_WIDTH, 49);
        NSArray *colorArray = @[RGB(0, 0, 0),RGB(240, 18, 29),RGB(250, 127, 117),RGB(248, 128, 73),RGB(249, 215, 60),RGB(211, 226, 47),RGB(117, 204, 41),RGB(66, 207, 232),RGB(27, 139, 241),RGB(204, 41, 251),RGB(119, 37, 251),RGB(129, 69, 36)];
        for (int i = 0; i < 12; i++) {
            UIView *view = [[UIView alloc]initWithFrame:CGRectMake((UI_SCREEN_WIDTH*2-49*12)/13*(i+1)+49*i+4, 2, 45, 45)];
            view.backgroundColor = colorArray[i];
            [_colorScrollView addSubview:view];
        }
        _colorScrollView.contentSize = CGSizeMake(UI_SCREEN_WIDTH*2, 0);
        _colorScrollView.showsHorizontalScrollIndicator = NO;
        _colorScrollView.hidden = YES;
    }
    return _colorScrollView;
}
-(UIView *)toolSelectView{
    if (!_toolSelectView) {
        _toolSelectView = [[UIView alloc]init];
        _toolSelectView.backgroundColor = BACKGROUND_COLOR;
        _toolSelectView.frame = CGRectMake(0, UI_SCREEN_HEIGHT-100, UI_SCREEN_WIDTH, 49);
        for (int i = 0; i < 5; i++) {
            UIView *view = [[UIView alloc]initWithFrame:CGRectMake((UI_SCREEN_WIDTH-49*5)/6*(i+1)+49*i,5*(5-i), 49,5+10*i)];
            view.backgroundColor = MAIN_COLOR;
            [_toolSelectView addSubview:view];
        }
        _toolSelectView.hidden = YES;
    }
    return _toolSelectView;
}
-(UIScrollView *)drawScrollView{
    if (!_drawScrollView) {
        _drawScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT-49)];
        _drawScrollView.showsHorizontalScrollIndicator = NO;
        _drawScrollView.pagingEnabled = YES;
    }
    return _drawScrollView;
}
@end
