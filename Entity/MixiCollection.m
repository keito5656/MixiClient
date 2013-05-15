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
    
    collection.startIndex = [data[@"startIndex"] integerValue];
    collection.itemsPerPage = [data[@"itemsPerPage"] integerValue];
    collection.totalResults = [data[@"totalResults"] integerValue];
    
    return collection;
}

@end
