//: [Previous](@previous)

import Foundation

// 1. Self-encapsulate the type code field.

enum Type {
    case enginner; case sales
}
class Employee {
    private let name: String; private let type: Type
    init(name: String, type: Type) {
        self.name = name; self.type = type
    }
    func getType() -> Type { return type }
}
func createEmployee(name: String, type: Type) -> Employee {
    return Employee(name: name, type: type)
}

//: [Next](@next)
