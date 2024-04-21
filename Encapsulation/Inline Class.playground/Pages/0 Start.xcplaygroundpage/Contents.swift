//: [Previous](@previous)

import Foundation

// The `Telephone` class is no longer serving a useful purpose and can be removed. Use the `Inline Class` refactoring to remove it.

class Person {
    private let telephone: Telephone
    init(telephone: Telephone) {
        self.telephone = telephone
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

