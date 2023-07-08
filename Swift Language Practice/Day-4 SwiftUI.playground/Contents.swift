import Cocoa

let surname: String = "Lasso"
var score: Double = 3.5
var luckyNumber: Int = 13
var pi: Double = 3.1416

var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id":"@twostraws"]
var books: Set<String> = Set([
    "The Bluest Eyes",
    "Foundation",
    "Girl, Women, other"
])

var terms: [String] = [String]()
var Cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = UIStyle.dark
style = .system

let username: String
//bla bla
username = "@Sami"
