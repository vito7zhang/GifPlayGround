//
//  HomeViewModel.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/8.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "HomeViewModel.h"
#import "HomeModel.h"


@implementation HomeViewModel
/**
 *  初始化该ViewModel时候进行网络请求请求下数据
 */
-(instancetype)init{
    if (self = [super init]) {
        [self setData];
    }
    return self;
}

/**
 *  通过此方法在ViewController中创建Cell
 *
 *  @param tableView 传入的tableView
 *
 *  @return HomeTableViewCell
 */
+(id)cellWithTableView:(UITableView *)tableView{
    static NSString *identifier = @"status";
    // 1.缓存中取
    HomeCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    // 2.创建
    if (cell == nil) {
        cell = [[HomeCell alloc]initWithStyle:UITableViewCellStyleDefault
                              reuseIdentifier:identifier];
    }
    return cell;
}


/**
 *  现在是假数据
 */
-(void)setData{
    _homeArray = [NSMutableArray array];
    NSArray *imagePathArray = @[@"http://tp2.sinaimg.cn/5187664653/50/40058043651/1",@"http://tp2.sinaimg.cn/3591355593/50/5729410237/1",@"http://tp4.sinaimg.cn/1642330551/50/5738933373/1",@"http://tp3.sinaimg.cn/3229125510/50/5693916311/1",@"http://tp1.sinaimg.cn/1291477752/50/5689317318/1"];
    NSArray *nameArray = @[@"张三",@"李四",@"王五",@"马六",@"田七"];
    NSArray *timeArray = @[@"今天 17：55",@"今天 13:02",@"1月8日",@"今天 17:29",@"今天 18:12"];
    NSArray *desciptionsArray = @[@"妈妈种的菜，妈妈做的饭",@"传承",@"浙江卫视跨年晚会，看看导播是怎么工作的，涨见识，牛逼",@"永远不要和专业排球手打篮球……把球给我，我要回家",@"你们好呀 你们吃饭了吗？"];
    NSArray *gifArray = @[@"http://ww2.sinaimg.cn/thumb180/005F4Uyxgw1ezte6h3tswj30dc0hs77b.jpg",@"http://ww2.sinaimg.cn/thumb180/d60fbcc9jw1eztl7fhp08j22192197wh.jpg",@"http://ww3.sinaimg.cn/thumb180/00638voqgw1ezt5mbvagsj30jg0eljsa.jpg",@"http://ww4.sinaimg.cn/thumb180/005F4Uyxgw1ezte6kuvo0j30dc0hstau.jpg",@"http://ww2.sinaimg.cn/thumb180/4cfa62f8jw1eztermb8rwj21f01w01jz.jpg"];
    NSArray *commentsArray = @[@[@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1"],@[@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1"],@[@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1"],@[@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1"],@[@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1",@"评论1"]];
    
    for (int i = 0; i < 5; i++) {
        HomeModel *homeModel = [HomeModel new];
        homeModel.imagePath = imagePathArray[i];
        homeModel.name = nameArray[i];
        homeModel.time = timeArray[i];
        homeModel.descriptions = desciptionsArray[i];
        homeModel.gif = gifArray[i];
        homeModel.zan = 32;
        homeModel.zanSelected = NO;
        homeModel.comments = commentsArray[i];
        homeModel.comment = homeModel.comments.count;
        [_homeArray addObject:homeModel];
    }
    

}



/**
 *  设置cell的内容
 *
 *  @param cell      要设置的cell
 *  @param homeModel 对应的model
 */
-(void)setCell:(HomeCell *)cell withHomeModel:(HomeModel *)homeModel{
    [cell.imageButton setImage:[UIImage imageNamed:@"touxiang"]forState:UIControlStateNormal];
    cell.nameLabel.text = homeModel.name;
    cell.timeLabel.text = homeModel.time;
    cell.descriptionLabel.text = homeModel.descriptions;
    cell.gifView.backgroundColor = RGB(255, 82, 82);
    cell.zanButton.selected = homeModel.zanSelected;
    cell.commentLabel.text = [NSString stringWithFormat:@"%d条评论",(int)homeModel.comment];
    cell.zanLabel.text = [NSString stringWithFormat:@"%lu个赞",(long)homeModel.zan];
    cell.shareButton.tintColor = [UIColor whiteColor];
    cell.spaceView.backgroundColor = BACKGROUND_COLOR;
    self.cellHeight = CGRectGetMaxY(cell.spaceView.frame)+100;
    cell.model = homeModel;

}


/**
 *  设置完cell的内容后根据内容设置cell的高度
 *
 *  @param cell 需要设置的高度的cell
 */
- (void)settingFrameWithCell:(HomeCell *)cell{
    cell.imageButton.frame      = CGRectMake(20, 20, 60, 60);
    cell.nameLabel.frame        = CGRectMake(80, 20, UI_SCREEN_WIDTH-160, 39);
    cell.timeLabel.frame        = CGRectMake(80, 59, UI_SCREEN_WIDTH-160, 21);
    cell.hotImageView.frame     = CGRectMake(UI_SCREEN_WIDTH-50, 20, 30, 30);
    CGSize size                 = [self sizeWithString:cell.descriptionLabel.text font:NameFont maxSize:CGSizeMake(UI_SCREEN_WIDTH-40, 1000)];
    cell.descriptionLabel.frame = CGRectMake(20, 90, UI_SCREEN_WIDTH-40, size.height);
    cell.gifView.frame          = CGRectMake(20, CGRectGetMaxY(cell.descriptionLabel.frame), UI_SCREEN_WIDTH-40, UI_SCREEN_WIDTH-40);
    cell.shareButton.frame      = CGRectMake(UI_SCREEN_WIDTH-50, CGRectGetMaxY(cell.gifView.frame)+10, 20, 20);
    cell.commentButton.frame    = CGRectMake(UI_SCREEN_WIDTH-90, CGRectGetMaxY(cell.gifView.frame)+10, 20, 20);
    cell.zanButton.frame        = CGRectMake(UI_SCREEN_WIDTH-130, CGRectGetMaxY(cell.gifView.frame)+10, 20, 20);
    cell.commentLabel.frame     = CGRectMake(CGRectGetMinX(cell.zanButton.frame)-90, CGRectGetMaxY(cell.gifView.frame)+10, 80, 30);
    cell.zanLabel.frame         = CGRectMake(CGRectGetMinX(cell.commentLabel.frame)-90, CGRectGetMaxY(cell.gifView.frame)+10, 80, 30);
    cell.cellHeight             = CGRectGetMaxY(cell.zanLabel.frame);
}

#pragma mark UITableViewDataSource
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    HomeCell *cell = [HomeViewModel cellWithTableView:tableView];
    return cell;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.homeArray.count;
}


/**
 *  计算文本的宽高
 *
 *  @param str     需要计算的文本
 *  @param font    文本显示的字体
 *  @param maxSize 文本显示的范围
 *
 *  @return 文本占用的真实宽高
 */
-(CGSize)sizeWithString:(NSString *)str font:(UIFont *)font maxSize:(CGSize)maxSize{
        NSDictionary *dict = @{NSFontAttributeName : font};
        // 如果将来计算的文字的范围超出了指定的范围,返回的就是指定的范围
        // 如果将来计算的文字的范围小于指定的范围, 返回的就是真实的范围
        CGSize size        = [str boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
        return size;
}

- (MaxGifModel *)maxGifModelWithTableView:(UITableView *)tableView andIndexPath:(NSIndexPath *)indexPath{
    HomeCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    HomeModel *model = cell.model;
    MaxGifModel *maxGifModel = [MaxGifModel new];
    maxGifModel.zanSelected = model.zanSelected;
    maxGifModel.comments = model.comments;
    maxGifModel.gifView = model.gif;
    return maxGifModel;
}
@end
