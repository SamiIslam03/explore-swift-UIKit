import Cocoa

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 2]
let tempuratures = [25.3, 28.2, 26.4]

print(beatles[3])

var scores = Array<Int>()
scores.append(50)
scores.append(70)
scores.append(100)

print(scores[1])

var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

var sami = [String]()
sami.append("Xoss")
sami.append("Shera")
sami.append("Osthir")

print(sami.count)
var character = ["Lana", "Pam", "Ray", "Stearling"]

character.remove(at: 2)
print(character)
print(character.contains("sth"))
print(character)

var cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted());

var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
print("Job: \(employee[1])")
print("Location: \(employee[2])")

var employee2 = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

let hasGraduated = [
    "Sami": true,
    "Faisal": false,
    "Sadi": true,
    "Mahmudul": false,
    "Navid": false,
    "Shanta": true
]
print(hasGraduated["Sami", default: false])

let olympics = [
    2012: "London",
    2016: "Rio de janerio",
    2021: "Tokyo"
]

var heights = [String: Int]()

heights["Sami"] = 229
heights["Maha"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "Joker"
archEnemies["Superman"] = "Lex luthor"
archEnemies["Batman"] = "Penguin"

print(archEnemies["Batman", default: "Unknown"])

let london = olympics[2012]

var actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolea Cage",
    "Samuel L Jackson"
])
print(actors)

var actress = Set<String>()
actress.insert("Margot Robbie")
actress.insert("Angelina Jolie")
actress.insert("Megan Fox")
actress.insert("Ana De Armas")

print(actress)

var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday"

enum weekday {
    case monday, sunday, wednesday, thursday, friday
}
var day = weekday.monday
day = .friday
day = .thursday
