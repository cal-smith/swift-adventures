//
//  main.m
//  OO-Obj-C
//
//  Created by cal on 4/14/15.
//  Copyright (c) 2015 cal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "oo.h"
#import "linkedlist.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        oo *o = [[oo alloc] initWithNumber:1];
        [o add:1];
        [o add:5];
        NSLog(@"%d", [o number]);
        
        linkedlist *ll = [[linkedlist alloc] init];
        [ll add:[[node alloc] initWithData:@"cool"]];
        [ll add:[[node alloc] initWithData:@"are"]];
        [ll add:[[node alloc] initWithData:@"linked lists"]];
        [ll log];
        
        NSError *__autoreleasing e;
        NSData* json = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://api.reddit.com/"] options:0 error:&e];
        if (!e){
            NSDictionary *parsed = [NSJSONSerialization JSONObjectWithData:json options:0 error:&e];
            NSLog(@"%@", [[[[parsed valueForKey:@"data"] valueForKey:@"children"][0] valueForKey:@"data"] valueForKey:@"title"]);
        } else {
            NSLog(@"failed with: %@", [e valueForKey:@"code"]);
        }
    }
    return 0;
}
