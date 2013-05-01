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
typedef void (^errorHandler)(Mixi* mixi, NSError* error);


@interface MixiClient : NSObject
- (void)sendRequest:(MixiRequest*)request complate:(completeHandler)aComplete error:(errorHandler)aError;
@end
