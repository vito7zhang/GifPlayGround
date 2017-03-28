//
//  PreView.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/14.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "PreView.h"

@implementation PreView

-(instancetype)init{
    if (self = [super init]) {
        self.backgroundColor = BACKGROUND_COLOR;
        self.frame = CGRectMake(0, 64, UI_SCREEN_WIDTH, 60);
        [self addSubview:self.preScrollView];
    }
    return self;
}

-(UIScrollView *)preScrollView{
    if (!_preScrollView) {
        _preScrollView = [[UIScrollView alloc]init];
        _preScrollView.frame = CGRectMake(0, 0, UI_SCREEN_WIDTH, 60);
        _preScrollView.showsHorizontalScrollIndicator = NO;
    }
    [_preScrollView addSubview:self.compoundButton];
    return _preScrollView;
}
-(UIButton *)compoundButton{
    if (!_compoundButton) {
        _compoundButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_compoundButton setImage:[UIImage imageNamed:@"watch"] forState:UIControlStateNormal];
        _compoundButton.frame = CGRectMake(0, 0, 60, 60);
    }
    return _compoundButton;
}

-(void)setImages:(NSMutableArray *)images{
    if (!_images) {
        _images = [NSMutableArray array];
    }
    _images = images;
    for (int i = 0; i < _images.count; i++) {
        UIImageView *imageView = [[UIImageView alloc]init];
        imageView.image = _images[i];
        imageView.frame = CGRectMake(10*(i+1)+34*i, 0, 34, 60);
        [self.preScrollView addSubview:imageView];
    }
    self.compoundButton.frame = CGRectMake(10*(_images.count+1)+34*_images.count, 0, 60, 60);
    self.preScrollView.contentSize = CGSizeMake((10+34)*_images.count+10, 0);
}


@end
