//
//  DrawView.h
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/14.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawView : UIView
@property (nonatomic,strong)UIView *buttonView;
@property (nonatomic,strong)UIButton *colorButton;
@property (nonatomic,strong)UIButton *toolButton;
@property (nonatomic,strong)UIButton *clearButton;
@property (nonatomic,strong)UIButton *delectButton;
@property (nonatomic,strong)UIButton *lockButton;
@property (nonatomic,strong)UIScrollView *colorScrollView;
@property (nonatomic,strong)UIView *toolSelectView;
@property (nonatomic,strong)UIScrollView *drawScrollView;
@end
