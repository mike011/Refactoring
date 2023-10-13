//: [Previous](@previous)

import Foundation

// 4. If there is any common code that cannot move to the start of the constructor, use Extract Function followed by Pull Up Method.

class Party {
    private let name: String;
    init(name: String) {
        self.name = name
        print("Name is :\(name)")
    }
    func checkName() {
        if(name.isEmpty) { print("name not set") }
    }
}

class Employee: Party {
    private let id: Int; private let cost: Double
    init(name: String, id: Int, cost: Double) {
        self.id = id
        self.cost = cost
        super.init(name: name)
        checkName()
    }
}

class Department: Party {
    private let staff: [Employee]
    init(name: String, staff: [Employee]) {
        self.staff = staff
        super.init(name: name)
        checkName()
    }
}

//: [Next](@next)
