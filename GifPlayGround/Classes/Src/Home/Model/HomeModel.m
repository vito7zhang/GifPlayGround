//
//  HomeModel.m
//  GifPlayGround
//
//  Created by vito7zhang on 16/1/8.
//  Copyright © 2016年 vito7zhang. All rights reserved.
//

#import "HomeModel.h"

@implementation HomeModel
-(id)initWithDictionary:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(id)homeWithDictionary:(NSDictionary *)dict{
    return [[self alloc]initWithDictionary:dict];
}
@end
