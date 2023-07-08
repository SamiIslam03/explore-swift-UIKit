import Cocoa

let arr: [String] = ["sami", "3", "5", "3", "2", "3", "6", "7"]
print(arr.count)

print(arr.contains("sami"))
var arr2: Set<String> = Set(arr)
print(arr2.count)
