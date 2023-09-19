//: [Previous](@previous)

import Foundation

// 3. Create selector logic to map from the type code parameter to the new subclass and test.

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
class Engineer: Employee {
    override func getType() -> Type { return .enginner }
}
func createEmployee(name: String, type: Type) -> Employee {
    switch type {
    case .enginner:
        return Engineer(name: name, type: type)
    default:
        return Employee(name: name, type: type)
    }
}

//: [Next](@next)
