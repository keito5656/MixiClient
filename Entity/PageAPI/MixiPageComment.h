//
//  MixiPageComment.h
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/08.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiEntity.h"
#import "MixiPageUser.h"

@interface MixiPageComment : MixiEntity
@property(nonatomic,strong) NSString *id;
@property(nonatomic,strong) NSString *comment;
@property(nonatomic,strong) MixiPageUser *sender;
@property(nonatomic,strong) NSString *created;
@property(nonatomic) BOOL isOwnerPosted;
@end