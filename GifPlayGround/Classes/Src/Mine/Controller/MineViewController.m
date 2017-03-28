//
//  MineViewController.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/8.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "MineViewController.h"
#import "LoginViewController.h"
#import "MineViewModel.h"

@interface MineViewController ()<UITableViewDelegate>
/**
 *  导航栏隐藏的视图
 */
@property (nonatomic,strong)UIView *hiddenView;
@property (nonatomic,strong)UIImageView *touxiangImageView;
@property (nonatomic,strong)MineViewModel *mineViewModel;

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     *  设置页面基本信息
     */
    self.title = @"我";
    self.navigationController.navigationBar.barTintColor = BACKGROUND_COLOR;
    self.hiddenView.hidden = YES;
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:RGB(250, 250, 250),NSForegroundColorAttributeName,[UIFont systemFontOfSize:20 weight:0],NSFontAttributeName,nil]];
    self.view.backgroundColor = BACKGROUND_COLOR;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.mineViewModel = [MineViewModel new];
    UITableView *mineTableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT) style:UITableViewStyleGrouped];
    mineTableView.delegate = self;
    mineTableView.dataSource = self.mineViewModel;
    [self.view addSubview:mineTableView];
    [_mineViewModel setHeadWithTableView:mineTableView andHeadView:_mineViewModel.headView];
    
    [self setTouxiangGestureRecognizer];
}

-(void)setTouxiangGestureRecognizer{
    self.touxiangImageView = _mineViewModel.headView.touxiangImageView;
    self.touxiangImageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pushAction:)];
    [self.touxiangImageView addGestureRecognizer:tap];
}


#pragma mark UITableViewDelegate
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return self.mineViewModel.cellHeight;
}
/**
 *  头像缩放实现
 *
 *  @param scrollView 当前TableView
 */
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGRect f     = _mineViewModel.headView.backGroundImageView.frame;
    f.size.width = [UIScreen mainScreen].bounds.size.width;
    _mineViewModel.headView.backGroundImageView.frame  = f;
    CGRect initFrame = _mineViewModel.headView.backGroundImageView.frame;
    
    if (scrollView.contentOffset.y<0) {
        CGFloat offset = (scrollView.contentOffset.y + scrollView.contentInset.top) * -1;
        
        initFrame.origin.x = -offset/2;
        initFrame.origin.y = -offset;
        initFrame.size.width = [UIScreen mainScreen].bounds.size.width+offset;
        initFrame.size.height = 200 +offset;
        _mineViewModel.headView.backGroundImageView.frame = initFrame;
        
        [self viewDidLayoutSubviews:offset/2];
    }
    if (scrollView.contentOffset.y<_mineViewModel.headView.backGroundImageView.frame.size.height-64) {
        self.hiddenView.hidden = YES;
        [UIView animateWithDuration:1.25 animations:^{
            self.navigationController.navigationBar.barTintColor = BACKGROUND_COLOR;
        }];
    }else
    {
        self.hiddenView.hidden = NO;
        [UIView animateWithDuration:1.25 animations:^{
            self.navigationController.navigationBar.barTintColor = MAIN_COLOR;
        }];
    }
}
- (void)viewDidLayoutSubviews:(CGFloat)offset
{
    _mineViewModel.headView.touxiangImageView.frame=CGRectMake(0, 0, 80+offset, 80+offset);
    _mineViewModel.headView.touxiangImageView.center = CGPointMake(_mineViewModel.headView.backGroundImageView.center.x, _mineViewModel.headView.backGroundImageView.center.y);
    _mineViewModel.headView.touxiangImageView.layer.cornerRadius = _mineViewModel.headView.touxiangImageView.frame.size.width/2;
    
    
}


-(void)pushAction:(UITapGestureRecognizer *)tap{
    self.hiddenView.hidden = NO;
    [self.navigationController pushViewController:[LoginViewController new] animated:YES];
}



/**
 *  获取导航栏隐藏视图
 *
 *  @return 导航栏隐藏视图
 */
-(UIView *)hiddenView{
    for (UIView *view in self.navigationController.navigationBar.subviews) {
        if([view isKindOfClass:NSClassFromString(@"_UINavigationBarBackground")])
            _hiddenView=view;
    }
    return _hiddenView;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.hiddenView.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
