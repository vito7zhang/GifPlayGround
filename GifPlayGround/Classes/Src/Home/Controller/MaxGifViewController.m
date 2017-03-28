//
//  MaxGifViewController.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/9.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "MaxGifViewController.h"
#import "MaxGifViewModel.h"

@interface MaxGifViewController ()

@end

@implementation MaxGifViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:[MaxGifViewModel viewWithModel:self.maxGifModel]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismissViewControllerAnimated:YES completion:nil];
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
