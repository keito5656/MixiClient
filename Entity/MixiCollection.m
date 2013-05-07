//
//  MixiCollection.m
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/08.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiCollection.h"

@implementation MixiCollection
+ (MixiCollection*)collectionWithData:(id)data {
    MixiCollection *collection = [[MixiCollection alloc] init];
    
    collection.startIndex = data[@"startIndex"];
    collection.itemsPerPage = data[@"itemsPerPage"];
    collection.totalResults = data[@"totalResults"];
    
    return collection;
    
}
@end
