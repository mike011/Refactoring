//: [Previous](@previous)

import Foundation

// 1. In the target(Person) class, create functions for all the public functions of the source class. These functions should just delegate to the source(Telephone) class.

class Person {
    private let telephone: Telephone
    init(telephone: Telephone) {
        self.telephone = telephone
    }
    func getTelephoneNumber() -> Int {
        return telephone.getNumber()
    }
    func getInformation() -> String {
        return "Name \(telephone.getNumber())"
    }
}

class Telephone {
    let areaCode = 1234
    private let number = 123
    func getNumber() -> Int { return areaCode + number }
}

let phone = Telephone()
let person = Person(telephone: phone)
print("You can reach me at: \(phone.getNumber())")

//: [Next](@next)
