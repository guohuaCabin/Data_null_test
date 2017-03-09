//
//  DataModel.m
//  Data_NULL_Demo
//
//  Created by 秦国华 on 2017/3/9.
//  Copyright © 2017年 秦国华. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel




@end


@implementation dataDetailModel

+ (JSONKeyMapper *)keymapper
{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"id":@"mId",
                                                                  }];
    
}

@end
