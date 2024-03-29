//: [Previous](@previous)

import Foundation

// 2. Pick one type code value. Create a subclass for that type code. Override the type code getter to return the literal type code value.

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
    return Employee(name: name, type: type)
}

//: [Next](@next)
