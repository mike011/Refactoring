//: [Previous](@previous)

import Foundation

// 6. Test

protocol Employee {
    var name: String { get }
}
extension Employee {
    func getName() -> String { return name }
}

class Salesperson: Employee {
    var name = "Sales"
}

class Engineer: Employee {
    var name = "Engineer"
}

//: [Next](@next)
