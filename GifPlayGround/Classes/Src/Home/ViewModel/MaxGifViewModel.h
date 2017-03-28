//
//  MaxGifViewModel.h
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/9.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MaxGifView.h"
#import "MaxGifModel.h"

@interface MaxGifViewModel : NSObject

+(MaxGifView *)viewWithModel:(MaxGifModel *)maxGifModel;
@end
