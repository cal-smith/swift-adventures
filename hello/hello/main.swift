//
//  main.swift
//  hello
//
//  Created by cal on 4/11/15.
//  Copyright (c) 2015 cal. All rights reserved.
//

import Foundation

println("name?")
var name = NSString(data:NSFileHandle.fileHandleWithStandardInput().availableData, encoding:NSUTF8StringEncoding)

println("Hello \(name!)")