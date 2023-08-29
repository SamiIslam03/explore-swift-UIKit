import UIKit

//var greeting = "Hello, playground"
//
//let name = "Taylor"
//
//for letter in name {
//    print("Give me a \(letter)!")
//}
//
//
////print(name[3])
//
//let letter = name[name.index(name.startIndex, offsetBy: 3)]
//
//extension String {
//    subscript(i: Int) -> String {
//        return String(self[index(startIndex, offsetBy: i)])
//    }
//}
//
//let latter2 = name[3]


//2
//let password = "12345"
//password.hasPrefix("123")
//password.hasSuffix("345")
//
//extension String {
//    func deletingPrefix(_ prefix: String) -> String {
//        guard self.hasPrefix(prefix) else { return self }
//        return String(self.dropFirst(prefix.count))
//    }
//
//    func deletingSuffix(_ suffix: String) -> String {
//        guard self.hasSuffix(suffix) else  { return self }
//        return String(self.dropLast(suffix.count))
//    }
//}


//3

//let weather = "it's going to rain"
//print(weather.capitalized)
//
//extension String {
//    var capitalizedFirst: String {
//        guard let firstLetter = self.first else { return " "}
//        return firstLetter.uppercased() + self.dropFirst()
//    }
//}

//4

let input = "Swift is like Objective-C without C"

input.contains("Swift")

let languages = ["Python", "Ruby", "Swift"]
languages.contains("Swift")

extension String {
    func containsAny(of array: [String]) -> Bool {
        for item in array {
            if self.contains(item) {
                return true
            }
        }
        return false
    }
}

input.containsAny(of: languages)

languages.contains(where: input.contains)
