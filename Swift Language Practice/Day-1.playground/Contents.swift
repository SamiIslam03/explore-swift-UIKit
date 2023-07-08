import Cocoa


var str = "Your score \(score)"
var result = "The test result are here: \(str)"
let taylor = "Swift"

let album: String = "Reputation"
let SamiIsAwsome = true
var multiLineTest =
"""
bla
bla bla
"""
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue",  "green", "blue"])

let  name = (first: "Taylor", last : "Swift")

let set = Set(["aardvark", "astronaut", "azalea"])
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

let qoute = "Then he tapped a sign saying \"Believer\" and walked sign."
let filename = "joybangla.jpg"
let heights = [
    "Taylor Swift" : 1.78,
    "Ed Sheeran" : 1.73
]
print(john.count)
print(qoute.uppercased())
print(filename.hasSuffix(".jpg"))

let score = 10
var isAuthenticate = false
isAuthenticate = !isAuthenticate
print(isAuthenticate)

var gameOver = false
print(gameOver)
gameOver.toggle()
print(gameOver)

let people = "Haters"
let action = "hate"

let lyric = people + " gonna " + action

let myName = "Sami"
let age = 25

let message = "Hello my name is \(myName). I am \(age) years old."

print("5 + 5 is \(5 + 5)")
