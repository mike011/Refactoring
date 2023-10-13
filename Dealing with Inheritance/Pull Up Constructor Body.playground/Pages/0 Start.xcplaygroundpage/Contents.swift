//: [Previous](@previous)

import Foundation

class Party {}

class Employee: Party {
    private let name: String; private let id: Int; private let cost: Double
    init(name: String, id: Int, cost: Double) {
        if(name.isEmpty) { print("name not set") }
        self.name = name
        print("Name is :\(name)")
        self.id = id
        self.cost = cost
    }
}

class Department: Party {
    private let name: String; private let staff: [Employee]
    init(name: String, staff: [Employee]) {
        if(name.isEmpty) { print("name not set") }
        self.name = name
        print("Name is :\(name)")
        self.staff = staff
    }
}

//: [Next](@next)

