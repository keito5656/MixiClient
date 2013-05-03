//
//  MixiPage.h
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MixiEntity.h"
#import "MixiPageImage.h"

typedef enum{
    ALL = 0,
    R18,
    R20
}AgeRatingType;

@interface MixiPage : MixiEntity
@property(nonatomic,strong) NSString *pageId;
@property(nonatomic,strong) NSString *pageName;
@property(nonatomic,strong) MixiPageImage *thumbnail;
@property(nonatomic,strong) NSString *details;
@property(nonatomic,strong) NSString *description;
@property(nonatomic,strong) NSString *zipCode;
@property(nonatomic,strong) NSString *address;
@property(nonatomic,strong) NSURL *pcHpUrl;
@property(nonatomic,strong) NSURL *mobileHpUrl;
@property(nonatomic,strong) NSURL *smartphoneHpUrl;
@property(nonatomic,strong) NSString *birthday;
@property(nonatomic) NSInteger followerCount;
@property(nonatomic) BOOL official;
@property(nonatomic) AgeRatingType ageRating;

+ (MixiPage *)makeContentFromDict:(NSDictionary*)dict;
@end
