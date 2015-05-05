//
//  linkedlist.m
//  OO-Obj-C
//
//  Created by cal on 4/14/15.
//  Copyright (c) 2015 cal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "linkedlist.h"

@implementation node

- (id) initWithData:(id)d {
    if (self = [super init]) {
        self->data = d;
        self->next = nil;
    }
    return self;
}

- (id) data {
    return self->data;
}

@end

@implementation linkedlist

- (id)init{
    if (self = [super init]) {
        self->head = nil;
    }
    return self;
}

- (void)add:(node*)n {
    node *tmp = self->head;
    self->head = n;
    self->head->next = tmp;
}

- (void)log {
    for (node *i = self->head; i != nil; i = i->next) {
        NSLog(@"%@", i->data);
    }
}

@end