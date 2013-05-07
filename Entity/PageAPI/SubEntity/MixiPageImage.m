//
//  MixiPageImage.m
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/03.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiPageImage.h"

@implementation MixiPageImage
+(MixiPageImage *)makeContentFromDict:(NSDictionary *)dict{
    MixiPageImage *pageImage = [[MixiPageImage alloc] init];
    pageImage.large = [NSURL URLWithString:dict[@"large"]];
    pageImage.medium = [NSURL URLWithString:dict[@"medium"]];
    pageImage.small = [NSURL URLWithString:dict[@"small"]];
    return pageImage;
}
@end
