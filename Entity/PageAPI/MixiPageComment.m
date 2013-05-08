//
//  MixiPageComment.m
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/08.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiPageComment.h"

@implementation MixiPageComment
+(id<MixiEntityProtocol>)makeContentFromDict:(NSDictionary *)dict {
    MixiPageComment *pageComment = [[MixiPageComment alloc] init];
    
    pageComment.id = dict[@"id"];
    pageComment.comment = dict[@"comment"];
    
    NSDictionary *user = dict[@"user"];
    pageComment.sender = [MixiPageUser makeContentFromDict:user];
    
    pageComment.created = dict[@"created"];
    pageComment.isOwnerPosted = [dict[@"isOwnerPosted"] boolValue];
    
    return pageComment;
}
@end
