import Cocoa

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.artist)
print(wings.title)

red.printSummary()
wings.printSummary()

struct Employee {
    let name: String
//    var vacationRemaining = 14
    var vacationAllocated = 14
    var vacationTaken = 0
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken

        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
//    mutating func takeVacation(days: Int){
//        if vacationRemaining > days{
//            vacationRemaining -= days
//            print("I'm going on a vacation!")
//            print("Days remaining \(vacationRemaining)")
//        } else {
//            print("Oops! There aren't enough days remaining.")
//        }
//    }
}

//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.takeVacation(days: 5)
//print(archer.vacationRemaining)
var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)

let kane = Employee(name: "Harry Kane")

//let poovey = Employee(name: "Poovey lu", vacationRemaining: 35)

struct User {
    var name: String
    var age: Int
    var city: String
}

var sa = User(name: "vulval", age: 25, city: "London")

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}


var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App{
    var contacts = [String]() {
        willSet {
            print("Current Value is: \(contacts)")
            print("New Value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts" )
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")


struct Swordfighter {
    var name: String
    var introduction: String {
        return "Hello, my name is \(name)."
    }
}
let inigo = Swordfighter(name: "Inigo Montoya")

struct BankAccount1 {
    var name: String
    var isMillionnaire = false
    var balance: Int {
        didSet {
            if balance > 1_000_000 {
                isMillionnaire = true
            } else {
                isMillionnaire = false
            }
        }
    }
}

struct Game1 {
    var score: Int {
        didSet {
            print("Your score is now \(score).")
        }
    }
}
struct House {
    var numberOfOccupants: Int {
        didSet {
            print("\(numberOfOccupants) people live here now.")
        }
    }
}
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

var p1 = Player(name: "Megan R")
p1.number


struct Employee1 {
    var name: String
    var yearsActive = 0
}

extension Employee1 {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee1(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee1()


struct Cottage {
    var rooms: Int
    var rating = 5
    init(rooms: Int) {
        self.rooms = rooms
    }
}
let bailbrookHouse = Cottage(rooms: 4)


//Day 11
struct BankAccount {
//    var funds = 0
    private var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
var myAcc = BankAccount()
myAcc.deposit(amount: 1000)
//print(myAcc.funds)


var account = BankAccount()
account.deposit(amount: 100)
var success = account.withdraw(amount: 200)
success = myAcc.withdraw(amount: 200)
if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

//struct FacebookUser {
//    private var privatePosts: [String]
//    public var publicPosts: [String]
//}
//let user = FacebookUser()
////This has a private property, so Swift is unable to generate its memberwise initializer for us.
struct Order {
    private var id: Int
    init(id: Int) {
        self.id = id
    }
}
let order = Order(id: 1)
struct Contributor {
    private var name = "Anonymous"
}
let paul = Contributor()

struct SecretAgent {
    private var actualName: String
    public var codeName: String
    init(name: String, codeName: String) {
        self.actualName = name
        self.codeName = codeName
    }
}
let bond = SecretAgent(name: "James Bond", codeName: "007")

//struct Doctor {
//    var name: String
//    var location: String
//    private var currentPatient = "No one"
//}
//let drJones = Doctor(name: "Esther Jones", location: "Bristol")
////This has a private property, so Swift is unable to generate its memberwise initializer for us.

struct School {
    var staffNames: [String]
    private var studentNames: [String]
    init(staff: [String]) {
        self.staffNames = staff
        self.studentNames = [String]()
    }
}
let royalHigh = School(staff: ["Mrs Hughes"])

struct App1 {
    var name: String
    private var sales = 0
    init(name: String) {
        self.name = name
    }
}
let spotify = App1(name: "Spotify")

struct School1 {
    static var studentCount = 0
    static func add(student: String) {
        print("\(student) joined the school." )
        studentCount += 1
    }
}

School1.add(student: "Sami")
School1.add(student: "Sadi")

//print(self.School1)
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFileName = "setting.json"
    static let homeURL = "https://www.hackingwithswift.com/quick-start/beginners/static-properties-and-methods"
}

struct Employee4 {
    let userName: String
    let password: String
    
    static let example = Employee4(userName: "cfederighi", password: "hairforceone")

}

struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
        if isBreaking {
            NewsStory.breakingNewsCount += 1
        } else {
            NewsStory.regularNewsCount += 1
        }
    }
}

struct LegoBrick {
    static var numberMade = 0
    var shape: String
    var color: String
    init(shape: String, color: String) {
        self.shape = shape
        self.color = color
        LegoBrick.numberMade += 1
    }
}
