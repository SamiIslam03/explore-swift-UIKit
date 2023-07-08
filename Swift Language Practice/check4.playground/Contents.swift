import Cocoa

enum numberCheck: Error {
    case lessThan1
    case greaterThan10000
}

func chekSqrt(number: Int) throws -> Double{
    
    if number < 1 {
        throw numberCheck.lessThan1
    } else if number > 10_000 {
        throw numberCheck.greaterThan10000
    } else {
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
}

var num = 68

do {
    let result = try chekSqrt(number: num)
    print("Square root of \(num) is \(result) ")
} catch numberCheck.lessThan1{
    print("Less than 1")
} catch numberCheck.greaterThan10000{
    print("Greater than 10000")
} catch {
    print ("Error")
}


