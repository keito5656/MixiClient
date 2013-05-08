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
typedef void (^collectionCompleteHandler)(MixiCollection *collection);

@interface MixiClient (PageAPI)
+ (MixiClient*)lookupWithPageID:(NSString*)pageId complete:(pageCompleteHandler)aComplete error:(errorHandler)aError;
@end
