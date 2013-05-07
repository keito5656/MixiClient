//
//  MixiCollection.h
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/08.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MixiCollection : NSObject
@property (nonatomic)NSInteger startIndex;
@property (nonatomic)NSInteger itemsPerPage;
@property (nonatomic)NSInteger totalResults;
@property (nonatomic, retain)NSArray *contents;

+ (MixiCollection*)collectionWithData:(id)data;
@end
