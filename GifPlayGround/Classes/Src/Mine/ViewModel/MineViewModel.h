//
//  MineViewModel.h
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/12.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HeadView.h"
#import "HomeViewModel.h"

@interface MineViewModel : NSObject<UITableViewDataSource>
/**
 *  当前
 */
@property (nonatomic,strong)HomeViewModel *homeViewModel;
@property (nonatomic,strong)NSMutableArray *dataSource;
@property (nonatomic,strong)HeadView *headView;
@property (nonatomic,assign)CGFloat cellHeight;
-(void)setHeadWithTableView:(UITableView *)tableView andHeadView:(HeadView *)headView;

@end
