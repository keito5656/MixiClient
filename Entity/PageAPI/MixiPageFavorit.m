//
//  MixiPagefavorit.m
//  MixiClient
//
//  Created by 山本洸希 on 13/05/14.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiPageFavorit.h"

@implementation MixiPageFavorit
+(id<MixiEntityProtocol>)makeContentFromDict:(NSDictionary *)dict {
    MixiPageFavorit *pageFavorit = [[MixiPageFavorit alloc] init];
    
    pageFavorit.cout = [dict[@"cout"] integerValue];
    pageFavorit.favorited = [dict[@"favorited"] boolValue];
    pageFavorit.favoriteId = dict[@"favoriteId"];
    
    return pageFavorit;
}
@end
