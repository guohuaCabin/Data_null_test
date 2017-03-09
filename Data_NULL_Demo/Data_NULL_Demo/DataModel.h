//
//  DataModel.h
//  Data_NULL_Demo
//
//  Created by 秦国华 on 2017/3/9.
//  Copyright © 2017年 秦国华. All rights reserved.
//

#import <JSONModel/JSONModel.h>



@interface dataDetailModel : JSONModel

@property(copy,nonatomic)NSString <Optional>*mId;
@property(copy,nonatomic)NSString <Optional>*title;
@property(copy,nonatomic)NSString <Optional>*publishDate;
@property(copy,nonatomic)NSString <Optional>*hasAtt;
@property(copy,nonatomic)NSString <Optional>*siteAreaName;
@property(copy,nonatomic)NSString <Optional>*imgUrl;
@property(copy,nonatomic)NSString <Optional>*content;
@property(copy,nonatomic)NSString <Optional>*org;

@end


@protocol dataDetailModel;


@interface DataModel : JSONModel

@property(strong,nonatomic)NSMutableArray<Optional, dataDetailModel> *items;

@property(assign,nonatomic)NSInteger nextPageId;

@property(copy,nonatomic)NSString <Optional>*stat;

@property(copy,nonatomic)NSString <Optional>*msg;

@property(assign,nonatomic)NSInteger number;


@end


