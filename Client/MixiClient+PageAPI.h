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
+ (MixiClient*)findMyFollowPageWithStartIndex:(NSInteger)startIndex limitCount:(NSInteger)count complete:(collectionCompleteHandler)aComplete error:(errorHandler)aError;
+ (MixiClient*)findFollowPageWithUserId:(NSString*)userId startIndex:(NSInteger)startIndex limitCount:(NSInteger)count complete:(collectionCompleteHandler)aComplete error:(errorHandler)aError;

// MixiPageFeed
+ (MixiClient*)findPageFeedWithPageId:(NSString*)pageId startIndex:(NSInteger)startIndex limitCount:(NSInteger)count complete:(collectionCompleteHandler)aComplete error:(errorHandler)aError;
+ (MixiClient*)lookupPageFeedWithPageId:(NSString*)pageId contentUri:(NSURL*)contentUri complete:(pageFeedCompleteHandler)aComplete error:(errorHandler)aError;
+ (MixiClient*)findFollowPageFeedWithStartIndex:(NSInteger)startIndex limitCount:(NSInteger)count complete:(collectionCompleteHandler)aComplete error:(errorHandler)aError;

// MixiPageComment
+ (MixiClient*)findPageCommentWithPageId:(NSString*)pageId contentUri:(NSURL*)contentUri startIndex:(NSInteger)startIndex limitCount:(NSInteger)count complete:(collectionCompleteHandler)aComplete error:(errorHandler)aError;
+ (MixiClient*)lookupPageCommentWithPageId:(NSString*)pageId contentUri:(NSURL*)contentUri commentId:(NSString*)commentId startIndex:(NSInteger)startIndex limitCount:(NSInteger)count complete:(collectionCompleteHandler)aComplete error:(errorHandler)aError;

@end
