//
//  RestCall.h
//  ApiCalls
//
//  Created by George Krajan Godas on 2/26/15.
//  Copyright (c) 2015 George Krajan Godas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RestCall : NSObject

-(NSData *)callApi:(NSString *)url;
@end
