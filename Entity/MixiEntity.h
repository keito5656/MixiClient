//
//  MixiEntity.h
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MixiEntityProtocol.h"
@interface MixiEntity : NSObject <MixiEntityProtocol>
+ (NSArray *)EntitiesArrayWithData:(NSDictionary*)data;
+ (NSArray *)makeContentArrayFromEntryArray:(NSArray*)dataArray;
+ (id<MixiEntityProtocol>)EntityWithData:(id)data;
@end
