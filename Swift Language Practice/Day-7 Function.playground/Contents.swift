import Cocoa

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}
showWelcome()
func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

let root = sqrt(9)

func rollDice() -> Int{
    return Int.random(in: 1...6)
}

let result = rollDice()

func sameLetterCompare (str1 : String, str2 : String) -> Bool {
    if(str1.sorted() == str2.sorted()){
        return true
    }else{
        return false
    }
}

sameLetterCompare(str1: "sam", str2: "mas")

func sameLetterCompare2 (str1 : String, str2 : String) -> Bool {
    return str1.sorted() == str2.sorted()
}

sameLetterCompare2(str1: "sam", str2: "mas")

func pythagoras(a: Double, b: Double) -> Double{
    return sqrt(a*a + b*b)
}

pythagoras(a: 3, b: 4)
func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}
greet(name: "Sami")

func getUser()-> [String]{
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")

func getUser1() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}


let user1 = getUser1()
print("Name: \(user1["firstName", default: "Anonymous"]) \(user1["lastName", default: "Anonymous"])")
print("Name: \(user1["firstName", default: "Anonymous"])\(user1["lastName", default: "Anonymous"])")


func isUppercase (string: String) -> Bool{
    string == string.uppercased()
}

func getUser2() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user2 = getUser2()
print("Name: \(user2.firstName) \(user2.lastName)")

let (firstName, lastName) = getUser2()
print("Name: \(firstName) \(lastName)")


func rRollDice(sides: Int, count: Int) -> [Int]{
    var rolls = [Int]()
    
    for _ in 1...count{
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    return rolls
}

let roll = rRollDice(sides: 6, count: 4)

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

var rresult = isUppercase(string: "HELLO WORLD")

func isUppercase1(_ string: String) -> Bool{
    string == string.uppercased()
}

rresult = isUppercase1("HELLO WORLD")

func printTimesTable(number: Int){
    for i in 1...12{
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(number: 13)
func countPoodles(dogs: [String]) -> Int {
    var sum = 0
    for dog in dogs {
        if dog == "Poodle" {
            sum += 1
        }
    }
    return sum
}
countPoodles(dogs: ["Mollie", "Penny", "Poppy"])

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.capacity)

enum  PasswordError: Error{
    case short, obvious
}
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {throw PasswordError.short}
    if password == "12345" {throw PasswordError.obvious}
    if password.count < 8{
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
var string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
}  catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have a same combination for my luggage!")
} catch {
    print("There was an error! \(error.localizedDescription)")
}
