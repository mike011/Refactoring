//: [Previous](@previous)

import Foundation

// Refactor the following by using: `Inline Class`

// 1. In the target class, create functions for all the public functions of the source class. These functions should just delegate to the source class.
// 2. Change all references to source class methods so they use the target class’s delegators instead. Test after each change.
// 3. Move all the functions and data from the source class into the target, testing after each move, until the source class is empty.
// 4. Delete the source class and hold a short, simple funeral service.

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
