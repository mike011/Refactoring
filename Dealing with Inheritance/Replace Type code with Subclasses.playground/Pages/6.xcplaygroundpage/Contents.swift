//: [Previous](@previous)

import Foundation

// 6. Use Push Down Method and Replace Conditional with Polymorphism on any methods that use the type code accessors. Once all are replaced, you can remove the type code accessors.

enum Type {
    case enginner; case sales
}
class Employee {
    private let name: String
    init(name: String) {
        self.name = name
    }
}
class Engineer: Employee {}
class Sales: Employee {}
func createEmployee(name: String, type: Type) -> Employee {
    switch type {
    case .enginner:
        return Engineer(name: name)
    case .sales:
        return Sales(name: name)
    }
}

//: [Next](@next)
