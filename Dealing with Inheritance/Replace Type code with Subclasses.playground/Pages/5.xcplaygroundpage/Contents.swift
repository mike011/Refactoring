//: [Previous](@previous)

import Foundation

// 5. Remove the type code field and test.

enum Type {
    case enginner; case sales
}
class Employee {
    private let name: String
    init(name: String) {
        self.name = name
    }
    func getType() -> Type { return .enginner }
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
        return Engineer(name: name)
    case .sales:
        return Sales(name: name)
    }
}

//: [Next](@next)
