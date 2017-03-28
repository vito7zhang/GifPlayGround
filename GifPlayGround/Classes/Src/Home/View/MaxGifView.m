//
//  MaxGifView.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/9.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "MaxGifView.h"

@interface MaxGifView()

@end

@implementation MaxGifView

-(instancetype)init{
    if (self = [super init]) {
        self.backgroundColor = BACKGROUND_COLOR;
        self.frame = CGRectMake(0, 0, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT);
        [self addSubview:self.gifView];
        [self addSubview:self.zanButton];
        [self addSubview:self.commentButton];
        [self addSubview:self.shareButton];
    }
    return self;
}

-(UIButton *)zanButton{
    if (!_zanButton) {
        _zanButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_zanButton setImage:[UIImage imageNamed:@"heart-full"] forState:UIControlStateNormal];
        [_zanButton setImage:[UIImage imageNamed:@"heart-fullHightLight"] forState:UIControlStateSelected];
        _zanButton.frame = CGRectMake(20, UI_SCREEN_HEIGHT-30, 30, 30);
        [_zanButton addTarget:self action:@selector(selectAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _zanButton;
}
-(UIButton *)commentButton{
    if (!_commentButton) {
        _commentButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_commentButton setImage:[UIImage imageNamed:@"tag"] forState:UIControlStateNormal];
        [_commentButton setImage:[UIImage imageNamed:@"tagHightLight"] forState:UIControlStateHighlighted];
        _commentButton.frame = CGRectMake(UI_SCREEN_WIDTH/2-15, UI_SCREEN_HEIGHT-30, 30, 30);
        [_commentButton addTarget:self action:@selector(selectAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _commentButton;
}
-(UIButton *)shareButton{
    if (!_shareButton) {
        _shareButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_shareButton setImage:[UIImage imageNamed:@"link"] forState:UIControlStateNormal];
        [_shareButton setImage:[UIImage imageNamed:@"linkHightLight"] forState:UIControlStateHighlighted];
        _shareButton.frame = CGRectMake(UI_SCREEN_WIDTH-50, UI_SCREEN_HEIGHT-30, 30, 30);
    }
    return _shareButton;
}
-(UIView *)gifView{
    if (!_gifView) {
        _gifView = [[UIView alloc] initWithFrame:CGRectMake(0, (UI_SCREEN_HEIGHT-UI_SCREEN_WIDTH)/2, UI_SCREEN_WIDTH, UI_SCREEN_WIDTH)];
        _gifView.backgroundColor = RGB(255, 82, 82);
        [_gifView sizeToFit];
    }
    return _gifView;
}

-(void)selectAction:(UIButton *)sender{
    sender.selected = !sender.selected;
}
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    for (UIView* next = [self superview]; next; next = next.superview) {
//        UIResponder* nextResponder = [next nextResponder];
//        if ([nextResponder isKindOfClass:[UIViewController class]]) {
//            [(UIViewController *)nextResponder dismissViewControllerAnimated:YES completion:^{}];
//        }
//    }
//}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
