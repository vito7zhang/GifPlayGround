//
//  MaxGifViewModel.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/9.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "MaxGifViewModel.h"

@implementation MaxGifViewModel
+(MaxGifView *)viewWithModel:(MaxGifModel *)maxGifModel{
    MaxGifView *maxGifView = [MaxGifView new];
    maxGifView.gifView.backgroundColor = RGB(255, 82, 82);
    maxGifView.zanButton.selected = maxGifModel.zanSelected;
    return maxGifView;
}
@end
