//: [Previous](@previous)

import Foundation

// 3. Remove the common code from each subclass and put it in the superclass. Add to the super call any constructor parameters referenced in the common code.

class Party {
    let name: String;
    init(name: String) {
        self.name = name
        print("Name is :\(name)")
    }
}

class Employee: Party {
    private let id: Int; private let cost: Double
    init(name: String, id: Int, cost: Double) {
        self.id = id
        self.cost = cost
        super.init(name: name)
        if(name.isEmpty) { print("name not set") }
    }
}

class Department: Party {
    private let staff: [Employee]
    init(name: String, staff: [Employee]) {
        self.staff = staff
        super.init(name: name)
        if(name.isEmpty) { print("name not set") }
    }
}

//: [Next](@next)
