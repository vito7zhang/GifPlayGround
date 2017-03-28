//
//  CompoundViewController.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/15.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "CompoundViewController.h"

@interface CompoundViewController ()

@end

@implementation CompoundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.navigationItem.rightBarButtonItems = [self setBarItems];
//    self.navigationItem.rightBarButtonItem.tintColor = MAIN_COLOR;
    
}

-(NSArray *)setBarItems{
    UIBarButtonItem *bar1 = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"save"] style:UIBarButtonItemStyleDone target:self action:@selector(saveAction:)];
    UIBarButtonItem *bar2 = [[UIBarButtonItem alloc] initWithTitle:@"保存并发布" style:UIBarButtonItemStyleDone target:self action:@selector(shareAction:)];
    bar2.enabled = NO;
    return @[bar1,bar2];
}

#pragma mark ButtonAction
-(void)saveAction:(UIButton *)sender{
    NSLog(@"%s",__FUNCTION__);
}
-(void)shareAction:(UIButton *)sender{
    NSLog(@"%s",__FUNCTION__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
