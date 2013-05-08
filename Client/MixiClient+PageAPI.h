//
//  MixiClient+PageAPI.h
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/08.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiClient.h"
@class MixiPage,MixiPageComment,MixiPageFeed,MixiCollection;

typedef void (^pageCompleteHandler)(MixiPage *entity);
typedef void (^pageFeedCompleteHandler)(MixiPageFeed *entity);

typedef void (^collectionCompleteHandler)(MixiCollection *collection);

@interface MixiClient (PageAPI)

// MixiPage
+ (MixiClient*)lookupWithPageId:(NSString*)pageId complete:(pageCompleteHandler)aComplete error:(errorHandler)aError;
+ (MixiClient*)findMyFollowPageWithComplete:(collectionCompleteHandler)aComplete error:(errorHandler)aError;
+ (MixiClient*)findFollowPageWithUserId:(NSString*)userId Complete:(collectionCompleteHandler)aComplete error:(errorHandler)aError;

// MixiPagFeed
+ (MixiClient*)findPageFeedWithPageId:(NSString*)pageId complete:(collectionCompleteHandler)aComplete error:(errorHandler)aError;
+ (MixiClient*)lookupPageFeedWithPageId:(NSString*)pageId contentUri:(NSURL*)contentUri complete:(pageFeedCompleteHandler)aComplete error:(errorHandler)aError;

@end
