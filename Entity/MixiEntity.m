//
//  MixiEntity.m
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiEntity.h"

@implementation MixiEntity

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

+ (id<MixiEntityProtocol>)EntityWithData:(id)data {
    return [MixiEntity makeContentFromDict:data[@"entry"]];
}


+ (NSArray *)EntitiesArrayWithData:(NSDictionary*)data{
    NSMutableArray *array = [data objectForKey:@"entry"];
    return [self makeContentArrayFromEntryArray:array];
}@end
