//
//  MixiClient+PageAPI.m
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/08.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiClient+PageAPI.h"
#import "MixiCollection.h"
#import "MixiPage.h"
#import "MixiPageFeed.h"

@implementation MixiClient (PageAPI)

#pragma mark - MixiPage

+(MixiClient*)lookupWithPageId:(NSString *)pageId complete:(pageCompleteHandler)aComplete error:(errorHandler)aError {
    
    MixiRequest *request = [MixiRequest requestWithEndpoint:[NSString stringWithFormat:@"/pages/%@",pageId]];
    
    MixiClient *client = [[MixiClient alloc]initWithRequest:request complate:^(id data) {
        MixiPage *page = [MixiPage entityWithData:data];
        aComplete(page);
    } error:^(Mixi *mixi, NSError *error) {
        aError(mixi,error);
    }];
    
    return client;
}

+ (MixiClient*)findFollowPageWithUserId:(NSString*)userId startIndex:(NSInteger)startIndex limitCount:(NSInteger)count complete:(collectionCompleteHandler)aComplete error:(errorHandler)aError {
    
    MixiRequest *request = [MixiRequest requestWithEndpoint:[NSString stringWithFormat:@"/followingPages/%@/@self?startIndex=%d&count=%d"
                                                             ,userId
                                                             ,startIndex
                                                             ,count
                                                             ]];
    
    MixiClient *client = [[MixiClient alloc]initWithRequest:request complate:^(id data) {
        MixiCollection *collection = [MixiPage entitiesArrayWithData:data];
        aComplete(collection);
    } error:^(Mixi *mixi, NSError *error) {
        aError(mixi,error);
    }];
    
    return client;
}
+(MixiClient *)findMyFollowPageWithStartIndex:(NSInteger)startIndex limitCount:(NSInteger)count complete:(collectionCompleteHandler)aComplete error:(errorHandler)aError {
    return [MixiClient findFollowPageWithUserId:@"@me" startIndex:startIndex limitCount:count complete:aComplete error:aError];
}

#pragma mark - MixiPageFeed

+ (MixiClient *)lookupPageFeedWithPageId:(NSString *)pageId contentUri:(NSURL *)contentUri complete:(pageFeedCompleteHandler)aComplete error:(errorHandler)aError {
    NSString *urlString = contentUri.absoluteString;
    NSString *escapedString = (NSString*)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(
                                                                                 kCFAllocatorDefault,
                                                                                 (CFStringRef)urlString,
                                                                                 NULL,
                                                                                 (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                                                 kCFStringEncodingUTF8));
    
    MixiRequest *request = [MixiRequest requestWithEndpoint:[NSString stringWithFormat:@"/pages/%@/feeds?contentUri=%@"
                                                             ,pageId,
                                                             escapedString
                                                             ]];

    MixiClient *client = [[MixiClient alloc]initWithRequest:request complate:^(id data) {
        MixiPageFeed *pageFeed = [MixiPageFeed entityWithData:data];
        aComplete(pageFeed);
    } error:^(Mixi *mixi, NSError *error) {
        aError(mixi,error);
    }];
    
    return client;
}
+(MixiClient *)findPageFeedWithPageId:(NSString *)pageId startIndex:(NSInteger)startIndex limitCount:(NSInteger)count complete:(collectionCompleteHandler)aComplete error:(errorHandler)aError {
    
    MixiRequest *request = [MixiRequest requestWithEndpoint:[NSString stringWithFormat:@"/pages/%@/feeds?startIndex=%d&count=%d"
                                                             ,pageId
                                                             ,startIndex
                                                             ,count
                                                             ]];

    MixiClient *client = [[MixiClient alloc]initWithRequest:request complate:^(id data) {
        MixiCollection *collection = [MixiPageFeed entitiesArrayWithData:data];
        aComplete(collection);
    } error:^(Mixi *mixi, NSError *error) {
        aError(mixi,error);
    }];

    return client;
}

@end
