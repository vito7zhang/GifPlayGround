//
//  HomeViewModel.h
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/8.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeCell.h"
#import "MaxGifViewModel.h"

@interface HomeViewModel : NSObject<UITableViewDataSource>
/**
 *  装载每个数据模型
 */
@property (nonatomic,strong)NSMutableArray *homeArray;
/**
 *  每个Cell的高
 */
@property (nonatomic,assign)CGFloat cellHeight;
/**
 * 初始化cell方法
 */
+ (id)cellWithTableView:(UITableView *)tableView;
/**
 *  网络请求完成调用此方法解析数据
 */
- (void)setData;

/**
 *  设置cell的内容
 *
 *  @param cell      要设置的cell
 *  @param homeModel 对应的model
 */
-(void)setCell:(HomeCell *)cell withHomeModel:(HomeModel *)homeModel;
/**
 *  设置完cell的内容后根据内容设置cell的高度
 *
 *  @param cell 需要设置的高度的cell
 */
- (void)settingFrameWithCell:(HomeCell *)cell;

-(CGSize)sizeWithString:(NSString *)str font:(UIFont *)font maxSize:(CGSize)maxSize;

- (MaxGifModel *)maxGifModelWithTableView:(UITableView *)tableView andIndexPath:(NSIndexPath *)indexPath;
@end
