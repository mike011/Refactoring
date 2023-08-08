//: [Previous](@previous)

import Foundation

// 6. Review the interfaces of both classes, remove unneeded methods, change names to better fit the new circumstances.

class Person {
    var officeAreaCode: Int {
        return telephone.areaCode
    }
    let telephone: Telephone
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
