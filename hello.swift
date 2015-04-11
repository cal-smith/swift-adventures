import Foundation

println("name?")
var name = NSString(data:NSFileHandle.fileHandleWithStandardInput().availableData, encoding:NSUTF8StringEncoding)

println("Hello \(name!)")