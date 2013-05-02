//
//  MixiEntityProtocol.h
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MixiEntity;

@protocol MixiEntityProtocol <NSObject>
+ (MixiEntity*)makeContentFromDict:(NSDictionary*)dict;
@end
