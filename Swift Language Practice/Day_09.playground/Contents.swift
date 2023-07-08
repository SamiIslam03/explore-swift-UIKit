import Cocoa

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

//Using different function
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne"{
        return true
    } else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
}

let captainFirstTeam1 = team.sorted(by: captainFirstSorted)

//let ... = ... .sorted (by: {(name1: String, name2: String)-> Bool in
//Body
//})

let captainFirstTeam2 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne"{
        return true
    } else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
})

//let ... = ... .sorted (by: { a,b in
//Body
//})

let captainFirstTeam3 = team.sorted(by: { a, b in
    if a == "Suzanne"{
        return true
    } else if b == "Suzanne"{
        return false
    }
    return a < b
})

//let ... = ... .sorted {a, b in
//Body
//}

let captainFirstTeam4 = team.sorted { a, b in
    if a == "Suzanne"{
        return true
    } else if b == "Suzanne"{
        return false
    }
    return a < b
}

//let ... = ... .sorted {
//Body. (use $0 and $1 as the arguement)
//}

let captainFirstTeam5 = team.sorted {
    if $0 == "Suzanne"{
        return true
    } else if $1 == "Suzanne"{
        return false
    }
    return $0 < $1
}

//reverse sort

let captainFirstTeam6 = team.sorted {
    return $0 > $1
}

//though single line we can remove the return
let captainFirstTeam7 = team.sorted { $0 > $1 }


print(captainFirstTeam1)
print(captainFirstTeam2)
print(captainFirstTeam3)
print(captainFirstTeam4)
print(captainFirstTeam5)
print(captainFirstTeam6)
print(captainFirstTeam7)

//Easy and too short to write
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

print(team.filter({ x in
    return x.hasPrefix("T")
}))

//Using the map function
let upperCaseTeam = team.map { $0.uppercased() }

print(upperCaseTeam)

//Using map you don't need to return the same things. You can convert the array in integer or different string
//We need to show sth after code. It helps.
//To add function on a Button



func greetUser(){
    print("Hi there!")
}

//let greetCopy = greetUser
let greetCopy:() -> Void = greetUser

greetCopy()

func getUserData(for id: Int) -> String{
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let getUserDataCopy: (Int) -> String = getUserData

let data: (Int) -> String = getUserData

getUserDataCopy(1989)


func makeArray(size: Int, using generator:() -> Int) -> [Int] {
    var numbers = [Int]()
    for _ in 0..<size{
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func generateNumber() -> Int{
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

var House126 = ["sami", "Sadi", "Ashique", "Faisal", "Torik", "Afrid", "Joy"]

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void){
    print("About to start first work.")
    first()
    print("About to start second work.")
    second()
    print("About to start third work.")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work.")
} second: {
    print("This is the Second work.")
} third: {
    print("This is the third work.")
}

func goOnVacation(to destination: String, _ activities: () -> Void) {
    print("Packing bags...")
    print("Getting on plane to \(destination)...")
    activities()
    print("Time to go home!")
}
goOnVacation(to: "Mexico") {
    print("Go sightseeing")
    print("Relax in sun")
    print("Go hiking")
}
