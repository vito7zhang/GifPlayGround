//
//  DrawViewController.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/14.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "DrawViewController.h"
#import "CompoundViewController.h"
#import "DrawView.h"
#import "PreView.h"

@interface DrawViewController ()
{
    DrawView *drawView;
    int index;
    PreView *preView;
}
@end

@implementation DrawViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"预览合成";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"return"] style:UIBarButtonItemStyleDone target:self action:@selector(backAction:)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"add"] style:UIBarButtonItemStyleDone target:self action:@selector(drawScrollViewAddSubView)];
    self.navigationItem.rightBarButtonItem.tintColor = MAIN_COLOR;
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:MAIN_COLOR,NSForegroundColorAttributeName,[UIFont systemFontOfSize:20 weight:0],NSFontAttributeName,nil]];
    [self.navigationController.navigationBar addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(titleAction:)]];
    
    index = 0;
    
    drawView = [[DrawView alloc]init];
    drawView.frame = self.view.frame;
    [self.view addSubview:drawView];
    
    preView = [[PreView alloc]init];
    [self.view addSubview:preView];
    preView.hidden = YES;

    [self drawScrollViewAddSubView];

    [self setTarget];
}

-(void)setTarget{
    [drawView.colorButton addTarget:self action:@selector(colorAction:) forControlEvents:UIControlEventTouchUpInside];
    [drawView.toolButton addTarget:self action:@selector(toolAction:) forControlEvents:UIControlEventTouchUpInside];
    [drawView.lockButton addTarget:self action:@selector(lockAction:) forControlEvents:UIControlEventTouchUpInside];
    [preView.compoundButton addTarget:self action:@selector(compoundAction:) forControlEvents:UIControlEventTouchUpInside];
}



#pragma mark 绘制的滚动视图
-(void)drawScrollViewAddSubView{
    UIView *subView = [[UIView alloc]initWithFrame:CGRectMake(UI_SCREEN_WIDTH*index, 0, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT-49)];
    subView.backgroundColor = RGB(100, 100, 70*index);
    [drawView.drawScrollView addSubview:subView];
    drawView.drawScrollView.contentSize = CGSizeMake(UI_SCREEN_WIDTH*(index+1), 0);
    drawView.drawScrollView.contentOffset = CGPointMake(UI_SCREEN_WIDTH*index, 0);
    index++;
}

#pragma mark 设置按钮方法
-(void)compoundAction:(UIButton *)sender{
    NSLog(@"%s",__FUNCTION__);
//    [self.navigationController pushViewController:[CompoundViewController new] animated:YES];
}
-(void)titleAction:(UITapGestureRecognizer *)tap{
    NSMutableArray *subViews = [NSMutableArray array];
    for (UIView *view in drawView.drawScrollView.subviews) {
        if ([view isMemberOfClass:[UIView class]]) {
            [subViews addObject:view];
        }
    }
    NSMutableArray *images = [NSMutableArray array];
    for (int i = 0; i < subViews.count; i++) {
        UIView *shrinkView = subViews[i];
        UIGraphicsBeginImageContext(shrinkView.bounds.size);
        [shrinkView.layer renderInContext:UIGraphicsGetCurrentContext()];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        [images addObject:image];
        UIGraphicsEndImageContext();
    }
    preView.hidden = !preView.hidden;
    if (preView.hidden == NO) {
        preView.images = images;
    }
}
-(void)colorAction:(UIButton *)sender{
    drawView.colorScrollView.hidden = !drawView.colorScrollView.hidden;
    if (!drawView.colorScrollView.hidden) {
        drawView.toolSelectView.hidden = YES;
    }
}
-(void)toolAction:(UIButton *)sender{
    drawView.toolSelectView.hidden = !drawView.toolSelectView.hidden;
    if (!drawView.toolSelectView.hidden) {
        drawView.colorScrollView.hidden = YES;
    }
}
-(void)lockAction:(UIButton *)sender{
    sender.selected = !sender.selected;
    drawView.drawScrollView.scrollEnabled = !sender.selected;
}

-(void)backAction:(UIBarButtonItem *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}



-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
