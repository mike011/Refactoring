//: [Previous](@previous)

import Foundation

// 4. Repeat creating the subclass and adding to the selector logic for each type code value. Test after each change.

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
class Sales: Employee {
    override func getType() -> Type { return .sales }
}
func createEmployee(name: String, type: Type) -> Employee {
    switch type {
    case .enginner:
        return Engineer(name: name, type: type)
    case .sales:
        return Sales(name: name, type: type)
    }
}

//: [Next](@next)
