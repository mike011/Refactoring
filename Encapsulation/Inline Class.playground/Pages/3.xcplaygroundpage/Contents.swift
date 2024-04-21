//: [Previous](@previous)

import Foundation

// 3. Move all the functions and data from the source(Telephone) class into the target(Person), testing after each move, until the source(Telephone) class is empty.

class Person {
    let areaCode = 1234
    private let number = 123
    func getNumber() -> Int { return number }

    private let telephone: Telephone
    init(telephone: Telephone) {
        self.telephone = telephone
    }
    func getTelephoneNumber() -> Int {
        return getNumber()
    }
    func getInformation() -> String {
        return "Name \(getTelephoneNumber())"
    }
}

class Telephone {
}

let phone = Telephone()
let person = Person(telephone: phone)
print("You can reach me at: \(person.getTelephoneNumber())")

//: [Next](@next)
