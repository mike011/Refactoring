//: [Previous](@previous)

import Foundation

// 1. In the target class, create functions for all the public functions of the source class. These functions should just delegate to the source class.

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
