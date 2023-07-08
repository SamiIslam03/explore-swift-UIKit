import Cocoa

for i in 1...100{
    if i % 3 == 0 && i % 5 == 0{
        print("\(i) should print “FizzBuzz”")
    } else if i % 3 == 0 {
        print("\(i) should print “Fizz”")
    } else if i % 5 == 0{
        print("\(i) should print “Buzz”")
    } else {
        print("\(i) should print “\(i)”")
    }
}

print("Different pattern using .isMultiple(of:)")

for i in 1 ... 100{
    if i.isMultiple(of:3) && i.isMultiple(of:5){
        print("\(i) should print “FizzBuzz”")
    } else if i.isMultiple(of:3) {
        print("\(i) should print “Fizz”")
    } else if i.isMultiple(of:5){
        print("\(i) should print “Buzz”")
    } else {
        print("\(i) should print “\(i)”")
    }
}
