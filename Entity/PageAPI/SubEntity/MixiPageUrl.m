//
//  MixiPageUrl.m
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiPageUrl.h"

@implementation MixiPageUrl
+(MixiPageUrl *)makeContentFromDict:(NSDictionary *)dict{
    MixiPageUrl *pageUrl = [[MixiPageUrl alloc] init];

    pageUrl.pc         = [NSURL URLWithString:dict[@"pcUrl"]];
    pageUrl.mobile     = [NSURL URLWithString:dict[@"mobileUrl"]];
    pageUrl.smartphone = [NSURL URLWithString:dict[@"smartphoneUrl"]];

    return pageUrl;
}
@end
