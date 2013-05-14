//
//  MixiPagefavorit.h
//  MixiClient
//
//  Created by 山本洸希 on 13/05/14.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiEntity.h"

@interface MixiPageFavorit : MixiEntity
@property(nonatomic) NSInteger cout;
@property(nonatomic) BOOL favorited;
@property(nonatomic,strong) NSString *favoriteId;
@end

