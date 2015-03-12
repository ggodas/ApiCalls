//
//  RestCall.m
//  ApiCalls
//
//  Created by George Krajan Godas on 2/26/15.
//  Copyright (c) 2015 George Krajan Godas. All rights reserved.
//

#import "RestCall.h"

@implementation RestCall

-(NSData *)callApi:(NSString *)url
{
    
    // Create the request.
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString: url]];
    
    // Specify that it will be a POST request
    request.HTTPMethod = @"GET";
    
    // This is how we set header fields
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    // Convert your data and set your request's HTTPBody property
    //NSString *stringData = @"some data";
    //NSData *requestBodyData = [stringData dataUsingEncoding:NSUTF8StringEncoding];
    //request.HTTPBody = requestBodyData;
    
    
    NSURLResponse* response;
    NSError* error = nil;
    NSData* result = [NSURLConnection sendSynchronousRequest:request  returningResponse:&response error:&error];
    
    
    NSString *jsonString = [[NSString alloc] initWithData:result encoding:NSUTF8StringEncoding];
    NSArray *jsonDict = [NSJSONSerialization JSONObjectWithData:result options:NSJSONReadingMutableContainers error:&error];
    
    for (NSDictionary *item in jsonDict) {
        NSLog(@"Item: %@", [item objectForKey:@"descricao"]);
    }
    
    //NSArray *items = [jsonDict allKeys];
    //for (NSString *item in items) {
    //    NSLog(@"%@", [jsonDict objectForKey: item]);
    //}
    
    //NSDictionary *question = [jsonDict objectForKey:@"question"];
    
    // Create url connection and fire request
    //NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
   
    
       return nil;
}
@end
