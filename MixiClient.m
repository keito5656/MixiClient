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
@property (nonatomic,strong)cancelHandler cancel;
@property (nonatomic,strong)NSURLConnection *connection;
@end

@implementation MixiClient
- (void)sendRequest:(MixiRequest*)request complate:(completeHandler)aComplete error:(errorHandler)aError {
    Mixi *mixi = [Mixi sharedMixi];
    _connection = [mixi sendRequest:request delegate:self];
    _complete = aComplete;
    _error = aError;
}

-(void)cancel:(cancelHandler)aCancel {
    _cancel = aCancel;
    [_connection cancel];
}


#pragma mixi delegate
- (void)mixi:(Mixi *)mixi didSuccessWithJson:(id)data {
    _complete(data);
}
- (void)mixi:(Mixi *)mixi didFailWithError:(NSError *)error {
    if (_error) {
        _error(mixi,error);
    }
}
- (void)mixi:(Mixi *)mixi didFailWithConnection:(NSURLConnection *)connection error:(NSError *)error {
    if (_error) {
    _error(mixi,error);
    }
}
-(void)mixi:(Mixi *)mixi didCancelWithConnection:(NSURLConnection *)connection {
    if (_cancel) {
        _cancel(mixi, connection);
    }
}

@end
