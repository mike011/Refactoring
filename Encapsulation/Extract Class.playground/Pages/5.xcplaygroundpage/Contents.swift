//: [Previous](@previous)

import Foundation

// 5. Use Move Function to move methods to the new child. Start with lower-level methods (those being called rather than calling). Test after each move.

class Person {
    var officeAreaCode: Int {
        return telephone.officeAreaCode
    }
    let telephone: Telephone
    init(telephone: Telephone) {
        self.telephone = telephone
    }
    func getOfficeNumber() -> Int {
        return telephone.getOfficeNumber()
    }
}

class Telephone {
    let officeAreaCode = 1234
    private let officeNumber = 123
    func getOfficeNumber() -> Int { return officeNumber }
}

//: [Next](@next)
