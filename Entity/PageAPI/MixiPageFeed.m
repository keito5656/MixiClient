//
//  MixiPageFeed.m
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiPageFeed.h"

@implementation MixiPageFeed
+(id<MixiEntityProtocol>)makeContentFromDict:(NSDictionary *)dict {
    MixiPageFeed *pageFeed = [[MixiPageFeed alloc] init];

    pageFeed.contentUri = [NSURL URLWithString:dict[@"contentUri"]];
    pageFeed.body = dict[@"body"];
    pageFeed.title = dict[@"title"];
    
    NSDictionary *urls = dict[@"urls"];
    pageFeed.url = [MixiPageUrl makeContentFromDict:urls];
    
    NSArray *images = dict[@"images"];
    NSMutableArray *aImages = [[NSMutableArray alloc] init];
    for (NSDictionary *imageDict in images) {
        MixiPageImage *image= [MixiPageImage makeContentFromDict:imageDict];
        [aImages addObject:image];
    }
    pageFeed.images = aImages;
    
    NSDictionary *user = dict[@"user"];
    pageFeed.senderID = user[@"id"];
    pageFeed.senderName = user[@"displayName"];
    
    pageFeed.favoriteCount = [dict[@"favoriteCount"] intValue];
    pageFeed.commentCount = [dict[@"commentCount"] intValue];
    
    pageFeed.sourceName = dict[@"sourceName"];
    pageFeed.created = dict[@"created"];
    pageFeed.isOwnerPosted = [dict[@"isOwnerPosted"] boolValue];

    
    return pageFeed;
}
@end
