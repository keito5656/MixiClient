//
//  MixiClient+PageAPI.h
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/08.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiClient.h"
@class MixiPage,MixiPageComment,MixiPageFeed,MixiCollection,MixiPageFavorit;

typedef void (^pageCompleteHandler)(MixiPage *entity);
typedef void (^pageFeedCompleteHandler)(MixiPageFeed *entity);
typedef void (^pageFavoritCompleteHandler)(MixiPageFavorit *entity);
typedef void (^createPageFavoritCompleteHandler)(NSString* favoriteId);
typedef void (^createPageCommentCompleteHandler)(NSString* commentId);
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
+ (MixiClient*)lookupPageCommentWithPageId:(NSString*)pageId contentUri:(NSURL*)contentUri commentId:(NSString*)commentId complete:(collectionCompleteHandler)aComplete error:(errorHandler)aError;
+ (MixiClient*)createPageCommentWithPageId:(NSString*)pageId contentUri:(NSURL*)contentUri comment:(NSString*)commentBody complete:(createPageCommentCompleteHandler)aComplete error:(errorHandler)aError;
+ (MixiClient*)deletePageCommentWithPageId:(NSString*)pageId contentUri:(NSURL*)contentUri commentId:(NSString*)commentId complete:(createPageCommentCompleteHandler)aComplete error:(errorHandler)aError;


// MixiPageFavorit
+ (MixiClient*)lookupPageFavoritWithPageId:(NSString*)pageId contentUri:(NSURL*)contentUri complete:(pageFavoritCompleteHandler)aComplete error:(errorHandler)aError;
+ (MixiClient*)createPageFavoritWithPageId:(NSString*)pageId contentUri:(NSURL*)contentUri complete:(createPageFavoritCompleteHandler)aComplete error:(errorHandler)aError;
+ (MixiClient*)deletePageFavoritWithPageId:(NSString*)pageId contentUri:(NSURL*)contentUri favoritId:(NSString*)favoritId complete:(createPageFavoritCompleteHandler)aComplete error:(errorHandler)aError;

@end
