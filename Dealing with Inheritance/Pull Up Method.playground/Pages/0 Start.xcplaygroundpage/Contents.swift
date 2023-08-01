//: [Previous](@previous)

import Foundation

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

