//: [Previous](@previous)

import Foundation

// The `Telephone` class is no longer serving a useful purpose and can be removed. Use the `Inline Class` refactoring to remove it.

class Person {
    var officeAreaCode: Int {
        return telephone.areaCode
    }
    private let telephone: Telephone
    init(telephone: Telephone) {
        self.telephone = telephone
    }
    func getOfficeNumber() -> Int {
        return telephone.getNumber()
    }
}

class Telephone {
    let areaCode = 1234
    private let number = 123
    func getNumber() -> Int { return number }
}

//: [Next](@next)
