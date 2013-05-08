//
//  MixiClient+PageAPI.m
//  mixiPhoto
//
//  Created by 山本洸希 on 13/05/08.
//  Copyright (c) 2013年 山本洸希. All rights reserved.
//

#import "MixiClient+PageAPI.h"
#import "MixiCollection.h"
#import "MixiPage.h"

@implementation MixiClient (PageAPI)
+(MixiClient*)lookupWithPageID:(NSString *)pageId complete:(pageCompleteHandler)aComplete error:(errorHandler)aError {
    
    MixiRequest *request = [MixiRequest requestWithEndpoint:[NSString stringWithFormat:@"/pages/%@",pageId]];
    
    MixiClient *client = [[MixiClient alloc]initWithRequest:request complate:^(id data) {
        MixiPage *page = [MixiPage entityWithData:data];
        aComplete(page);
    } error:^(Mixi *mixi, NSError *error) {
        aError(mixi,error);
    }];
    
    return client;
}
@end
