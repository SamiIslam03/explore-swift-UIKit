import Cocoa

protocol Vehicle {
    var name: String { get }
    var currentPassenger: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassenger = 3
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunRoof(){
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    let name = "bicycle"
    var currentPassenger = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}

func commute(distance: Int, using Vehicle: Vehicle){
    if Vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow.! I'll try a  different vehicle.")
    } else {
        Vehicle.travel(distance: distance)
    }
}

func getTravelEstimate(using vehicles: [Vehicle], distance: Int){
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km.")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bicycle = Bicycle()
commute(distance: 50, using: bicycle)

getTravelEstimate(using: [car, bicycle], distance: 150)

//Opaque
func getRandomNumber () -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool () -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

//create and use extension
//var qoute = "   The truth is rarely pure and never simple   "
//let trimmed = qoute.trimmingCharacters(in: .whitespacesAndNewlines)

//extension String {
//    func trimmed() -> String {
//        self.trimmingCharacters(in: .whitespacesAndNewlines)
//    }
//}

//qoute.trimmed()
//func trim(_ string: String) -> String {
//    string.trimmingCharacters(in: .whitespacesAndNewlines)
//}

//var newQoute = trim(qoute)

//extension String {
//    mutating func trim() {
//        self = self.trimmed()
//    }
//}

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
    
}


var qoute = "   The truth is rarely pure and never simple   "
let trimmed = qoute.trimmingCharacters(in: .whitespacesAndNewlines)
qoute.trim()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

struct Book {
    let title: String
    let pageCount: Int
    let readingHour: Int
}

extension Book{
    init (title: String, pageCount: Int){
        self.title = title
        self.pageCount = pageCount
        self.readingHour = pageCount/50
    }
}

extension Int {
    func clamped(min: Int, max: Int) -> Int {
        if (self > max) {
            return max
        } else if (self < min) {
            return min
        }
        return self
    }
}
extension String {
    var isLong: Bool {
        return count > 25
    }
}
extension String {
    func withPrefix(_ prefix: String) -> String {
        if self.hasPrefix(prefix) { return self }
        return "\(prefix)\(self)"
    }
}
extension String {
    func isUppercased() -> Bool {
        return self == self.uppercased()
    }
}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guest = ["Mario", "Luigi", "Peach"]

if guest.isNotEmpty {
    print("Guest count: \(guest.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello(){
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

protocol SmartPhone {
    func makeCall(to name: String)
}
extension SmartPhone {
    func makeCall(to name: String) {
        print("Dialling \(name)...")
    }
}

let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }

let numbers2 = Set([4, 8, 15, 16])
let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }

let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }
