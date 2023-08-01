//: [Previous](@previous)

import Foundation

// 3. If the methods have different signatures, use Change Function Declaration to get them to the one you want to use on the superclass.

protocol Employee {
    var name: String { get }
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
