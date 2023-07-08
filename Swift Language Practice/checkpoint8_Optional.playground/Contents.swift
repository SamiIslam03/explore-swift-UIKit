import Cocoa

var arr = [2, 4, 7, 10, 12]

func accOptional(arr: [Int]?) -> Int? {
    arr?.randomElement() ?? Int.random(in: 1...100)
}

print(accOptional(arr: arr) ?? nil ?? 0)

