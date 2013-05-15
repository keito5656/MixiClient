//
//  MixiClient.h
//  
//
//  Created by keito5656 on 13/05/01.
//  Copyright (c) 2013年 keito5656. All rights reserved.
//
#import "MixiSDK.h"
#import <Foundation/Foundation.h>
typedef void (^completeHandler)(id data);
typedef void (^errorHandler)(Mixi *mixi, NSError *error);
typedef void (^cancelHandler)(Mixi *mixi, NSURLConnection *connection);


@interface MixiClient : NSObject
- (MixiClient*)initWithRequest:(MixiRequest*)request complate:(completeHandler)aComplete error:(errorHandler)aError;
- (MixiClient*)sendRequest:(MixiRequest*)request complate:(completeHandler)aComplete error:(errorHandler)aError;
- (void)cancel:(cancelHandler)aCancel;
@property(nonatomic)BOOL allowBlank;
@end
