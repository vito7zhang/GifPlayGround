//
//  MineModel.h
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/12.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeModel.h"

@interface MineModel : UIView
/**
 *  页面数据
 */
@property (nonatomic,strong)HomeModel *model;
/**
 *  头像的路径
 */
@property (nonatomic,strong)NSString *touxiangPath;
@end
