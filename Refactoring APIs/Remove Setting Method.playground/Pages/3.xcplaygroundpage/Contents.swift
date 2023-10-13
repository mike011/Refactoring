//: [Previous](@previous)

import Foundation

// 3. Use Inline Function on the setting method. Make the field immutable if possible and test.

class Person {
    private var name: String?
    private let id: String
    init(id: String) {
        self.id = id
    }
    func getName() -> String? { return name }
    func set(name: String) { self.name = name }
    func getID() -> String { return id }
}

let martin = Person(id: "1234")
martin.set(name: "Martin")

//: [Next](@next)
