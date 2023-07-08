import Cocoa

let score = 85

if score > 80 {
    print("Great job!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're goint, we don't need roads.")
}

if percentage < 85 {
    print("Sorry! You are fail")
}

if age >= 18 {
    print("You are eligable for vote")
}

let ourName = "Dave Lister"
let friendName = "Arnolod Rimemr"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}
if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var number = [1, 2, 3]
number.append(4)

if number.count > 3 {
    number.remove(at: 0)
}

print(number)

let country = "Canada"
if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"
if name != "Anonymous"{
    print(name)
}

var username = ""
if username == "" {
    username = "Anonymous"
}

if username.count == 0 {
    username = "Anonymous"
}

if username.isEmpty {
    username = "Anonymous"
}

print("Welcome \(username).")

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)

let age1 = 16
if age1 > 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry! You're too young to vote")
}

let a = false
let b = true

if a {
    print("Code to run if a is true.")
} else if b {
    print("Code to run if a is false but b is true.")
} else {
    print("Code to run if both a and b are false.")
}

let temp = 28
if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}

if temp > 20 && temp < 30 {
    print("It's a nice day 2.")
}

let userAge = 15
let hasParentsConsent = true

if userAge > 18 || hasParentsConsent{
    print("You can buy the game.")
}

enum TransportationOption {
    case airplane, car, scooter, bike, helicopter, bicycle
}

let transport = TransportationOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle{
    print("Hope there is a bicycle path.")
} else if transport == .car{
    print("Time to get stuck in trafic.")
} else {
    print("I have my own bike.")
}

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}


let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}


let vage = 18
let canVote = vage >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

print(hour < 12 ? "It's before noon" : "It's after noon")

//print(
//    if hour < 12 {
//        "It's before noon"
//    } else {
//        "It's after noon"
//    }
//)

if hour < 12 {
    print("It's before noon")
} else {
    print("It's after noon")
}
