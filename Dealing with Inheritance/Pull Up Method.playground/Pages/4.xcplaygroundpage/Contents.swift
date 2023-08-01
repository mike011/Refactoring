//: [Previous](@previous)

import Foundation

// 4. Create a new method in the superclass. Copy the body of one of the methods over to it.

protocol Employee {
    var name: String { get }
}
extension Employee {
    func getName() -> String { return name }
}

class Salesperson: Employee {
    var name = "Sales"
    func getName() -> String { return name }
}

class Engineer: Employee {
    var name = "Engineer"
    func getName() -> String { return name }
}

//: [Next](@next)
