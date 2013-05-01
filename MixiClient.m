//
//  MixiClient.m
//
//
//  Created by keito5656 on 13/05/01.
//  Copyright (c) 2013年 keito5656. All rights reserved.
//

#import "MixiClient.h"

@interface MixiClient() <MixiDelegate>
@property (nonatomic,strong)completeHandler complete;
@property (nonatomic,strong)errorHandler error;
@end

@implementation MixiClient
- (void)sendRequest:(MixiRequest*)request complate:(completeHandler)aComplete error:(errorHandler)aError {
    Mixi *mixi = [Mixi sharedMixi];
    [mixi sendRequest:request delegate:self];
    _complete = aComplete;
    _error = aError;
}


#pragma mixi delegate
- (void)mixi:(Mixi *)mixi didSuccessWithJson:(id)data {
    _complete(data);
}
- (void)mixi:(Mixi *)mixi didFailWithError:(NSError *)error {
    _error(mixi,error);
}
- (void)mixi:(Mixi *)mixi didFailWithConnection:(NSURLConnection *)connection error:(NSError *)error {
    _error(mixi,error);
}

@end
