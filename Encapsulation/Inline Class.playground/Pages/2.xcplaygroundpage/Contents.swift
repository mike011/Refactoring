//: [Previous](@previous)

import Foundation

// 2. Change all references to source(Telephone) class methods so they use the target(Peson) class’s delegators instead. Test after each change.

class Person {
    private let telephone: Telephone
    init(telephone: Telephone) {
        self.telephone = telephone
    }
    func getTelephoneNumber() -> Int {
        return telephone.getNumber()
    }
    func getInformation() -> String {
        return "Name \(getTelephoneNumber())"
    }
}

class Telephone {
    let areaCode = 1234
    private let number = 123
    func getNumber() -> Int { return number }
}

let phone = Telephone()
let person = Person(telephone: phone)
print("You can reach me at: \(person.getTelephoneNumber())")

//: [Next](@next)
