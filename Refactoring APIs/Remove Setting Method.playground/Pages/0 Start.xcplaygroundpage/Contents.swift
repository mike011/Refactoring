//: [Previous](@previous)

import Foundation

class Person {
    private var name: String?
    private var id: String?
    func getName() -> String? { return name }
    func set(name: String) { self.name = name }
    func getID() -> String? { return id }
    func set(id: String) { self.id = id }
}

let martin = Person()
martin.set(name: "Martin")
martin.set(id: "1234")

//: [Next](@next)

