import Cocoa

let opposites = ["Mario": "Wario", "Luigi": "Waluiga"]
let peachOpposite = opposites["peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was emnpty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

let album = "Red"
let albums = ["Reputation", "Red", "1989"]
if let position = albums.firstIndex(of: album) {
    print("Found \(album) at position \(position).")
}

func printSquare (of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko",
]

let new = captains["Serenity", default: "N/A"]

let tvShow = ["Archer", "Babylon 5", "Ted Lesso"]
let favourite = tvShow.randomElement() ?? "None"//coalescing

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"

print(author)

let input = ""
let number1 = Int(input) ?? 0
print(number1)

let lightsaberColor: String? = "green"
let color = lightsaberColor ?? "blue"

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book1 {
    let title: String
    let author: String?
}

var book1: Book? = nil
let author1 = book1?.author?.first?.uppercased() ?? "A"

print(author1)

enum UseError: Error{
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UseError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)
