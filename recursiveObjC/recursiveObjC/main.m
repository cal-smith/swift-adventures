//
//  main.m
//  recursiveObjC
//
//  Created by cal on 4/14/15.
//  Copyright (c) 2015 cal. All rights reserved.
//

#import <Foundation/Foundation.h>

int mul(int a, int b){
    if (b == 0) {
        return 0;
    } else if (b == 1){
        return a;
    } else {
        return a + mul(a, b-1);
    }
}

int fastfib_helper(int n, int a, int b){
    if (n == 0) {
        return a;
    } else {
        return fastfib_helper(n-1, b, a+b);
    }
}

int fastfib(n){
    return fastfib_helper(n, 0, 1);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"mul (6*7) %d", mul(6, 7));
        NSLog(@"fastfib (40) %d", fastfib(40));
    }
    return 0;
}
