import Cocoa

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}

//for i in 1...12{
//    for j in 1...12{
//        print("\(i) x \(j) = \(i*j)")
//    }
//    print()
//}

for i in 1...5{
    print("Counting from 1 through 12 = \(i)")
}

var x = 1..<7
for i in x{
    print("Counting from 1 up to 12 = \(i)")
}

var lyrics = "Haters gonna"
for _ in 1...5{
    lyrics += " hate"
}

print(lyrics)

let namess = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in namess {
    print("\(name) is a secret agent")
}

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names {
    print("[CENSORED] is a    secret agent!")
}
print(names[0])
print(names[1...3])
print(names[0...])



for number in [2, 3, 5] {
    print("\(number) is a prime number.")
}
var countdown = 10
while countdown > 0{
    print("\(countdown)")
    countdown -= 1
}
print("Blast! off.")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)

    print("I rolled a \(roll)")
}
print("Critical hit!")

let filenames = ["me.jpg", "work.jpg", "joy Sami", "sophie.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
        
        if multiples.count == 10{
            break
        }
    }
}

print(multiples) 
