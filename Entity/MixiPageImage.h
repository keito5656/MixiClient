//
//  MixiPageImage.h
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MixiPageImage : NSObject
@property(nonatomic,strong) NSURL *large;
@property(nonatomic,strong) NSURL *small;
@property(nonatomic,strong) NSURL *medium;
+ (MixiPageImage *)makeContentFromDict:(NSDictionary*)dict;
@end
