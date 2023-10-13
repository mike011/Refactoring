//: [Previous](@previous)

import Foundation

class Person {
    private let name: String
    init(name: String) { self.name = name }
    func getName() -> String { return name }
    func getGender() -> String { return "X" }
}
class Male: Person { override func getGender() -> String { return "M" } }
class Female: Person { override func getGender() -> String { return "F" } }

print(Male(name: "Bob").getGender())
print(Female(name: "Mary").getGender())

let people = [Person]()
let numberOfMales = people.filter { person in person is Male }

//: [Next](@next)

