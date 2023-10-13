//: [Previous](@previous)

import Foundation

// 1. Define a superclass constructor, if one doesn’t already exist. Ensure it’s called by subclass constructors.

class Party {
    init() {}
}

class Employee: Party {
    private let name: String; private let id: Int; private let cost: Double
    init(name: String, id: Int, cost: Double) {
        if(name.isEmpty) { print("name not set") }
        self.name = name
        print("Name is :\(name)")
        self.id = id
        self.cost = cost
        super.init()
    }
}

class Department: Party {
    private let name: String; private let staff: [Employee]
    init(name: String, staff: [Employee]) {
        if(name.isEmpty) { print("name not set") }
        self.name = name
        print("Name is :\(name)")
        self.staff = staff
        super.init()
    }
}

//: [Next](@next)
