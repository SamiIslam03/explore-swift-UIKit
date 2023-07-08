//import Cocoa
//
//struct car {
//    let model: String
//    let NumberOfSeat: Int
//    private var currentGear: Int
//
//    mutating func changeGear(change: Int){
//        var x = (change + currentGear)
//
//        if x >= 0 && x<=10   {
//            self.currentGear = self.currentGear + change
//        } else {
//            print("Not possible")
//        }
//    }
//}

import Cocoa

struct Car {
    let make: String
    let model: String
    let numberOfSeat: Int
    let numberOfGears: Int
    private(set) var currentGear: Int
    
    enum GearChange{
        case up
        case down
    }
    
    mutating func changeGear(_ position: GearChange){
        
        if position == GearChange.up{
            currentGear = currentGear == numberOfGears ? numberOfGears : currentGear + 1
        } else {
            currentGear = currentGear == 1 ? 1 : currentGear - 1
        }
    }
}

var car = Car(make: "Audi", model: "Q3", numberOfSeat: 5, numberOfGears: 5, currentGear: 2)

print(car.currentGear)

car.changeGear(.up)

print(car.currentGear)

car.changeGear(.down)

car.changeGear(.down)

print(car.currentGear)

car.changeGear(.up)

car.changeGear(.up)

car.changeGear(.up)

car.changeGear(.up)

print(car.currentGear)

car.changeGear(.up)

print(car.currentGear)
