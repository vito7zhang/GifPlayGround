//  
//  HomeCell.h
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/8.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeModel.h"

@interface HomeCell : UITableViewCell
NS_ASSUME_NONNULL_BEGIN
/**
 *  头像是按钮，点击进去个人页面
 */
@property (nonatomic,strong)UIButton *imageButton;
/**
 *  名称标签
 */
@property (nonatomic,strong)UILabel *nameLabel;
/**
 *  时间标签
 */
@property (nonatomic,strong)UILabel *timeLabel;
/**
 *  热门或新鲜图片
 */
@property (nonatomic,strong)UIImageView *hotImageView;



/**
 *  Gif描述
 */
@property (nonatomic,strong)UILabel *descriptionLabel;
/**
 *  Gif图片视图
 */
@property (nonatomic,strong)UIView *gifView;


/**
 *  赞数量Label
 */
@property (nonatomic,strong)UILabel *zanLabel;
/**
 *  评论数量Label
 */
@property (nonatomic,strong)UILabel *commentLabel;
/**
 *  点赞按钮
 */
@property (nonatomic,strong)UIButton *zanButton;
/**
 *  评论按钮
 */
@property (nonatomic,strong)UIButton *commentButton;
/**
 *  分享按钮
 */
@property (nonatomic,strong)UIButton *shareButton;
/**
 *  间隔条
 */
@property (nonatomic,strong)UIView *spaceView;


/**
 *  cell的高度
 */
@property (nonatomic,assign)CGFloat cellHeight;
/**
 *  每个cell对应的model
 */
@property (nonatomic,strong)HomeModel *model;

//- (void)settingFrame;



NS_ASSUME_NONNULL_END
@end
