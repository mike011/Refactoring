//: [Previous](@previous)

import Foundation

// 2. If any code tests against the subclass’s types, use Extract Function on the type test and Move Function to move it to the superclass. Test after each change.

class Person {
    private let name: String
    init(name: String) { self.name = name }
    func getName() -> String { return name }
    func getGender() -> String { return "X" }
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
