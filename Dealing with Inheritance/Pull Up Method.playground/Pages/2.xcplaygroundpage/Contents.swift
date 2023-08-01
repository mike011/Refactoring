//: [Previous](@previous)

import Foundation

// 2. Check that all method calls and field references inside the method body refer to features that can be called from the superclass and update as needed.

protocol Employee {
    var name: String { get }
}

class Salesperson: Employee {
    var name = "Sales"
    func getName() -> String { return name }
}

class Engineer: Employee {
    var name = "Engineer"
    func getTitle() -> String { return name }
}

//: [Next](@next)
