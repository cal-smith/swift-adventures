//
//  linkedlist.h
//  OO-Obj-C
//
//  Created by cal on 4/14/15.
//  Copyright (c) 2015 cal. All rights reserved.
//
@interface node : NSObject{
    @public id data;
    @public node *next;
}
- (id)initWithData: (id)d;
- (id)data;
@end

@interface linkedlist : NSObject{
    node *head;
}
- (void)add: (node*)n;
- (void)log;
@end