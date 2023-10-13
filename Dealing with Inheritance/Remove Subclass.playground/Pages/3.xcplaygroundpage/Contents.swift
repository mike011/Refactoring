//: [Previous](@previous)

import Foundation

// 3. Create a field to represent the subclass type.

class Person {
    private let name: String
    private let gender = "X"
    init(name: String) { self.name = name}
    func getName() -> String { return name }
    func getGender() -> String { return gender }
    func isMale() -> Bool { return self is Male }
}
class Male: Person { override func getGender() -> String { return "M" } }
class Female: Person { override func getGender() -> String { return "F" } }

func createPerson(withName name: String) -> Person { return Person(name: name) }
func createMale(withName name: String) -> Person { return Male(name: name) }
func createFemale(withName name: String) -> Person { return Female(name: name) }

print(createMale(withName: "Bob").getGender())
print(createFemale(withName: "Mary").getGender())

let people = [Person]()
let numberOfMales = people.filter { person in person.isMale() }

//: [Next](@next)
