//: [Previous](@previous)

import Foundation

// 1. If the value that’s being set isn’t provided to the constructor, use Change Function Declaration to add it. Add a call to the setting method within the constructor.

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
martin.set(id: "1234")

//: [Next](@next)
