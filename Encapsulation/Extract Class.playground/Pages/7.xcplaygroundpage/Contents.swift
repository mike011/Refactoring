//: [Previous](@previous)

import Foundation

// 7. Decide whether to expose the new child. If so, consider applying Change Reference to Value to the child class.

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
