//
//  HomeModel.h
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/8.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomeModel : NSObject
NS_ASSUME_NONNULL_BEGIN
/**
 *  头像图片路径
 */
@property (nonatomic,strong)NSString *imagePath;
/**
 *  用户名称
 */
@property (nonatomic,strong)NSString *name;
/**
 *  发布日期
 */
@property (nonatomic,strong)NSString *time;
/**
 *  是否为热门
 */
@property (nonatomic,strong)NSString *hot;
/**
 *  Gif发布的文本
 */
@property (nonatomic,strong)NSString *descriptions;
/**
 *  Gif路径
 */
@property (nonatomic,strong)NSString *gif;
/**
 *  赞的数量
 */
@property (nonatomic,assign)NSInteger zan;
/**
 *  是否已经赞
 */
@property (nonatomic,assign)BOOL zanSelected;
/**
 *  评论数量
 */
@property (nonatomic,assign)NSInteger comment;
/**
 *  评论列表
 */
@property (nonatomic,copy)NSArray *comments;


/**
 *  两个初始化方法
 *
 *  @param dict 传下来的数据转换的字典
 *
 *  @return HomeModel数据模型
 */
+ (id)homeWithDictionary:(NSDictionary *)dict;
- (id)initWithDictionary:(NSDictionary *)dict;
NS_ASSUME_NONNULL_END
@end
