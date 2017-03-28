//
//  HeadView.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/12.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "HeadView.h"

@implementation HeadView

-(instancetype)init{
    if (self = [super init]) {
        [self addSubview:self.backGroundImageView];
        [self addSubview:self.touxiangImageView];
    }
    return self;
}


-(UIImageView *)backGroundImageView{
    if (!_backGroundImageView) {
        _backGroundImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
        _backGroundImageView.image = [UIImage imageNamed:@"backGround"];
        _backGroundImageView.clipsToBounds=YES;
        _backGroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _backGroundImageView;
}
-(UIImageView *)touxiangImageView{
    if (!_touxiangImageView) {
        _touxiangImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 80, 80)];
        _touxiangImageView.image=[UIImage imageNamed:@"touxiang"];
        _touxiangImageView.center=CGPointMake(_backGroundImageView.center.x, _backGroundImageView.center.y);
        _touxiangImageView.clipsToBounds=YES;
        _touxiangImageView.contentMode=UIViewContentModeScaleAspectFill;
    }
    
    return _touxiangImageView;
    
}


@end
