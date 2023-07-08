import Cocoa

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

class ThemePark {
    var entryPrice: Int
    var rides: [String]
    init(rides: [String]) {
        self.rides = rides
        self.entryPrice = rides.count * 2
    }
}

class Employee {
    let hours: Int
    
    init(hours: Int){
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times will spend hours arguing about whether code should be indented using tabs or spaces")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)

robert.work()
joseph.work()

let aleana = Developer(hours: 7)
aleana.printSummary()

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

class Instrument {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Piano: Instrument {
    var isElectric: Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
        super.init(name: "Piano")
    }
}

class User {
    var userName = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.userName = userName
        return user
    }
    
    
}

var user1 = User()
var user2 = user1
user2.userName = "Sami"

var user3 = user1.copy()
user3.userName = "Samiul"

print(user1.userName)
print(user2.userName)
print(user3.userName)


class User1 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm Dead!")
    }
}

var users = [User1]()

for i in 1...3 {
    let user = User1(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished.")
users.removeAll()
print("Array is clear!")

class User2 {
    var name = "Paul"
}

var  user = User2()
user.name = "Taylor"
print(user.name)

user = User2()
print(user.name)


