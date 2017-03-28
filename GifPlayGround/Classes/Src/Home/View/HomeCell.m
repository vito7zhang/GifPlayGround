//
//  HomeCell.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/8.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "HomeCell.h"

@implementation HomeCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}


#pragma 延迟加载
-(UIButton *)imageButton{
    if (!_imageButton) {
        _imageButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _imageButton.layer.masksToBounds = YES;
        _imageButton.layer.cornerRadius = 30.0;
        [self.contentView addSubview:_imageButton];
    }
    return _imageButton;
}
-(UILabel *)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc]init];
        _nameLabel.font = NameFont;
        _nameLabel.textColor = MAINTEXT_COLOR;
        [self.contentView addSubview:_nameLabel];
    }
    return _nameLabel;
}
-(UILabel *)timeLabel{
    if (!_timeLabel) {
        _timeLabel = [[UILabel alloc]init];
        _timeLabel.font = TimeFont;
        _timeLabel.textColor = RGB(136, 136, 136);
        [self.contentView addSubview:_timeLabel];
    }
    return _timeLabel;
}
-(UIImageView *)hotImageView{
    if (!_hotImageView) {
        _hotImageView = [[UIImageView alloc]init];
        _hotImageView.image = [UIImage imageNamed:@"hot"];
        [self.contentView addSubview:_hotImageView];
    }
    return _hotImageView;
}
-(UILabel *)descriptionLabel{
    if (!_descriptionLabel) {
        _descriptionLabel = [[UILabel alloc]init];
        _descriptionLabel.numberOfLines = 0;
        _descriptionLabel.font = NameFont;
        _descriptionLabel.textColor = MAINTEXT_COLOR;
        [self.contentView addSubview:_descriptionLabel];
    }
    return _descriptionLabel;
}
-(UIView *)gifView{
    if (!_gifView) {
        _gifView = [[UIView alloc]init];
        [self.contentView addSubview:_gifView];
    }
    return _gifView;
}
-(UIButton *)shareButton{
    if (!_shareButton) {
        _shareButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_shareButton setImage:[UIImage imageNamed:@"link"] forState:UIControlStateNormal];
        [_shareButton setImage:[UIImage imageNamed:@"linkHightLight"] forState:UIControlStateHighlighted];
        [self.contentView addSubview:_shareButton];
    }
    return _shareButton;
}
-(UIButton *)commentButton{
    if (!_commentButton) {
        _commentButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_commentButton setImage:[UIImage imageNamed:@"tag"] forState:UIControlStateNormal];
        [_commentButton setImage:[UIImage imageNamed:@"tagHightLight"] forState:UIControlStateHighlighted];
        [self.contentView addSubview:_commentButton];
    }
    return _commentButton;
}
-(UIButton *)zanButton{
    if (!_zanButton) {
        _zanButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_zanButton setImage:[UIImage imageNamed:@"heart-full"] forState:UIControlStateNormal];
        [_zanButton setImage:[UIImage imageNamed:@"heart-fullHightLight"] forState:UIControlStateSelected];
        [_zanButton addTarget:self action:@selector(selectAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:_zanButton];
    }
    return _zanButton;
}
-(UILabel *)commentLabel{
    if (!_commentLabel) {
        _commentLabel = [[UILabel alloc]init];
        _commentLabel.adjustsFontSizeToFitWidth = YES;
        _commentLabel.textColor = RGB(136, 136, 136);
        _commentLabel.font = [UIFont systemFontOfSize:16.0];
        [self.contentView addSubview:_commentLabel];
    }
    return _commentLabel;
}
-(UILabel *)zanLabel{
    if (!_zanLabel) {
        _zanLabel = [[UILabel alloc]init];
        _zanLabel.adjustsFontSizeToFitWidth = YES;
        _zanLabel.textColor = RGB(136, 136, 136);
        _zanLabel.font = [UIFont systemFontOfSize:16.0];
        _zanLabel.textAlignment = NSTextAlignmentRight;
        [self.contentView addSubview:_zanLabel];
    }
    return _zanLabel;
}

-(UIView *)spaceView{
    if (!_spaceView) {
        _spaceView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_zanLabel.frame), UI_SCREEN_WIDTH, 10)];
        [self addSubview:_spaceView];
    }
    return _spaceView;
}


- (void)selectAction:(UIButton *)sender{
    sender.selected = !sender.selected;
    _model.zanSelected = sender.selected;
}




@end
