//
//  ViewController.m
//  GUItestObjC
//
//  Created by cal on 4/14/15.
//  Copyright (c) 2015 cal. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self text] setStringValue:@"text"];
    [[self button] setTitle:@"wat"];
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    //button.
    // Update the view, if already loaded.
}

- (IBAction)click:(id)sender {
    [[self text] setStringValue:@"HOLY COW TEXT YAY"];
}

@end
