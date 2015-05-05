//
//  main.m
//  helloObjC
//
//  Created by cal on 4/14/15.
//  Copyright (c) 2015 cal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = [[NSString alloc] initWithData:[[NSFileHandle fileHandleWithStandardInput] availableData] encoding:NSUTF8StringEncoding];
        NSLog(@"Hello %@", name);
    }
    return 0;
}
