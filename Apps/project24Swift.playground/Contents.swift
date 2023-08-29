import UIKit

var greeting = "Hello, playground"

let name = "Taylor"

for letter in name {
    print("Give me a \(letter)!")
}
//print(name[3])

let letter = name[name.index(name.startIndex, offsetBy: 3)]

//extension String {
//    subscript(i: Int) -> String {
//        return String(self[index(startIndex, offsetBy: i)])
//    }
//}

          
