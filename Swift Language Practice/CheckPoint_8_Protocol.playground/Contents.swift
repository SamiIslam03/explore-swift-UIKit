import Cocoa

protocol Building {
    var howManyRooms: Int { get }
    var cost: Int {get set}
    var nameOfTheEstateAgent: String {get set}
    func salesSummary()
}

struct House: Building {
    let howManyRooms: Int
    var cost: Int
    var nameOfTheEstateAgent: String
    
    init(howManyRooms: Int, cost: Int, nameOfTheEstateAgent: String) {
            self.howManyRooms = howManyRooms
            self.cost = cost
            self.nameOfTheEstateAgent = nameOfTheEstateAgent
    }
    
    func salesSummary() {
        print("There are \(howManyRooms) rooms in the house. The cost is $\(cost) and the estate Agent is \(nameOfTheEstateAgent)")
    }
}


struct Office: Building {
    let howManyRooms: Int
    var cost: Int
    var nameOfTheEstateAgent: String
    
    init(howManyRooms: Int, cost: Int, nameOfTheEstateAgent: String) {
            self.howManyRooms = howManyRooms
            self.cost = cost
            self.nameOfTheEstateAgent = nameOfTheEstateAgent
    }
    
    func salesSummary() {
        print("There are \(howManyRooms) rooms in the Office. The cost is $\(cost) and the estate Agent is \(nameOfTheEstateAgent)")
    }
}
