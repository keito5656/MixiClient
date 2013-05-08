//
//  MixiPageUser.m
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/08.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiPageUser.h"

@implementation MixiPageUser
+ (id<MixiEntityProtocol>)makeContentFromDict:(NSDictionary *)dict {
    
    MixiPageUser *user = [[MixiPageUser alloc] init];
    
    user.id = dict[@"id"];
    user.name = dict[@"displayName"];
    user.thumbnailUrl = dict[@"thumbnailUrl"];
    
    return user;
}
@end
