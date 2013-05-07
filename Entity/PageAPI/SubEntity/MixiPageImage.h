//
//  MixiPageImage.h
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MixiEntityProtocol.h"

@interface MixiPageImage : NSObject <MixiEntityProtocol>
@property(nonatomic,strong) NSURL *large;
@property(nonatomic,strong) NSURL *small;
@property(nonatomic,strong) NSURL *medium;
@end
