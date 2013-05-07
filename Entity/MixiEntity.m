//
//  MixiEntity.m
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiEntity.h"
#import "MixiCollection.h"

@implementation MixiEntity

#pragma mark - public
+ (id<MixiEntityProtocol>)entityWithData:(id)data {
    return [self makeContentFromDict:data[@"entry"]];
}

#pragma mark - MixiEntityProtocol

+ (MixiCollection *)entitiesArrayWithData:(NSDictionary*)data{
    NSMutableArray *array = [data objectForKey:@"entry"];
    MixiCollection *collection = [MixiCollection collectionWithData:data];
    collection.contents = [self makeContentArrayFromEntryArray:array];
    
    return collection;
}

#pragma mark - private

+ (MixiEntity*)makeContentFromDict:(NSDictionary*)dict{
    return [[MixiEntity alloc] init];
}

+ (NSArray *)makeContentArrayFromEntryArray:(NSArray*)dataArray{
    
	NSMutableArray * contentsArray = [NSMutableArray array];
    for(NSDictionary * contentDict in dataArray){
        id content = [self makeContentFromDict:contentDict];
        [contentsArray addObject:content];
    }
    return contentsArray;
}

@end
