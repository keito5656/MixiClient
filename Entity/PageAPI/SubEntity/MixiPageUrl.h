//
//  MixiPageUrl.h
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MixiEntityProtocol.h"

@interface MixiPageUrl : NSObject <MixiEntityProtocol>
@property(nonatomic,strong) NSURL *pc;
@property(nonatomic,strong) NSURL *mobile;
@property(nonatomic,strong) NSURL *smartphone;
@end
