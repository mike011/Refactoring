//: [Previous](@previous)

import Foundation

// 2. Remove each call of a setting method outside of the constructor, using the new constructor value instead. Test after each one.

class Person {
    private var name: String?
    private var id: String
    init(id: String) {
        self.id = id
    }
    func getName() -> String? { return name }
    func set(name: String) { self.name = name }
    func getID() -> String { return id }
    func set(id: String) { self.id = id }
}

let martin = Person(id: "1234")
martin.set(name: "Martin")

//: [Next](@next)
