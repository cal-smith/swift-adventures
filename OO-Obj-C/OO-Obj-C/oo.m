//
//  oo.m
//  OO-Obj-C
//
//  Created by cal on 4/14/15.
//  Copyright (c) 2015 cal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "oo.h"

@implementation oo

- (id)initWithNumber:(int)n {
    if (self = [super init]) {
        self->number = n;
    }
    return self;
}

- (int)add:(int)n {
    self->number += n;
    return self->number;
}

- (int)number{
    return self->number;
}

@end
