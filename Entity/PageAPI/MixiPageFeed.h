//
//  MixiPageFeed.h
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiEntity.h"
#import "MixiPageImage.h"
#import "MixiPageUrl.h"

@interface MixiPageFeed : MixiEntity
@property(nonatomic,strong) NSURL *contentUri;
@property(nonatomic,strong) NSString *body;
@property(nonatomic,strong) NSString *title;
@property(nonatomic,strong) MixiPageUrl *url;
@property(nonatomic,strong) NSArray *images;
@property(nonatomic,strong) NSString *senderID;
@property(nonatomic,strong) NSString *senderName;
@property(nonatomic,strong) NSURL *senderThumbnailUrl;
@property(nonatomic) NSInteger *favoriteCount;
@property(nonatomic) NSInteger *commentCount;
@property(nonatomic,strong) NSString *sourceName;
@property(nonatomic,strong) NSString *created;
@property(nonatomic) BOOL isOwnerPosted;
@end
