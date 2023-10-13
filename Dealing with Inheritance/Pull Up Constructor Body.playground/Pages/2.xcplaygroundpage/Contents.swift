//: [Previous](@previous)

import Foundation

// 2. Use Slide Statements to move any common statements to just after the super call.

class Party {
    init() {}
}

class Employee: Party {
    private let name: String; private let id: Int; private let cost: Double
    init(name: String, id: Int, cost: Double) {
        self.name = name
        self.id = id
        self.cost = cost
        super.init()
        if(name.isEmpty) { print("name not set") }
        print("Name is :\(name)")
    }
}

class Department: Party {
    private let name: String; private let staff: [Employee]
    init(name: String, staff: [Employee]) {
        self.name = name
        self.staff = staff
        super.init()
        if(name.isEmpty) { print("name not set") }
        print("Name is :\(name)")
    }
}

//: [Next](@next)
