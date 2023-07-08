import Cocoa

var greeting = "Hello, checkpoint 4"

enum numberCheck: Error {
    case outOfBoundary
}
func checkNum(_ number: Int) throws -> String{
    if number < 1 {
        throw numberCheck.outOfBoundary
    } else if number > 10_000 {
        throw numberCheck.outOfBoundary
    }
    if number >= 1 && number <= 10_000{
        return "Okay"
    } else {
        return "Out of boundary."
    }
}

func chekSqrt(number: Int) -> Double{
    do {
        let result = num
        
        print("\(result)")
    } catch {
        print("There was an error.")
    }
    
    var x: Double = Double(number);
    if (number < 2){
        return x
    }
    var y: Double = x
    var z: Double = (y + (x / y)) / 2
    
    while (y - z) >= 0.00001{
        y = z
        z = (y + (x / y)) / 2
    }
    
    return z
}

var num = 100001

print("Square root of \(num) is \(chekSqrt(number: num)) ")

