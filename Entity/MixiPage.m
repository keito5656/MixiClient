//
//  MixiPage.m
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiPage.h"

@implementation MixiPage
+ (MixiPage *)makeContentFromDict:(NSDictionary*)dict{
    MixiPage *page = [[MixiPage alloc] init];
    

    page.pageId = dict[@"id"];
    page.pageName = dict[@"displayName"];

    NSDictionary *thumbnailUrls = dict[@"thumbnailUrls"];
    page.largethumbnailUrl = [NSURL URLWithString:thumbnailUrls[@"large"]];
    page.mediumthumbnailUrl = [NSURL URLWithString:thumbnailUrls[@"medium"]];
    page.smallthumbnailUrl = [NSURL URLWithString:thumbnailUrls[@"medium"]];
    
    page.details = dict[@"details"];
    page.description = dict[@"description"];
    
    NSDictionary *options = dict[@"options"];
    page.zipCode = options[@"zipCode"];
    page.address = options[@"address"];
    page.pcHpUrl = [NSURL URLWithString:thumbnailUrls[@"pcUrl"]];
    page.mobileHpUrl = [NSURL URLWithString:thumbnailUrls[@"mobileUrl"]];
    page.smallthumbnailUrl = [NSURL URLWithString:thumbnailUrls[@"smartphoneUrl"]];
    page.birthday = options[@"birthday"];
    
    page.followerCount = [dict[@"followerCount"] intValue];
    page.official = [dict[@"official"] boolValue];
    page.ageRating = [page ageRatingWithString:dict[@"ageRating"]];
    
    return page;
}



- (AgeRatingType)ageRatingWithString:(NSString*)string {
    if ([string isEqualToString:@"G"]) {
        return ALL;
    }
    if ([string isEqualToString:@"R18"]) {
        return R18;
    }
    return R20;
}

@end
