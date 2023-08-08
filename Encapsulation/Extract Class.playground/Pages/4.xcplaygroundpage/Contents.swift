//: [Previous](@previous)

import Foundation

// 4. Use Move Field on each field you wish to move. Test after each move.

class Person {
    var officeAreaCode: Int {
        return telephone.officeAreaCode
    }
    private let officeNumber = 123
    let telephone: Telephone
    init(telephone: Telephone) {
        self.telephone = telephone
    }
    func getOfficeNumber() -> Int { return officeNumber }
}

class Telephone {
    let officeAreaCode = 1234
}

//: [Next](@next)
