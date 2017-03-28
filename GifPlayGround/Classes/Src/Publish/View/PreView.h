//
//  PreView.h
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/14.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PreView : UIView
@property (nonatomic,strong)NSMutableArray *images;
@property (nonatomic,strong)UIScrollView *preScrollView;
@property (nonatomic,strong)UIButton *compoundButton;
@end