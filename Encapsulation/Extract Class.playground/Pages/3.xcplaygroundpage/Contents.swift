//: [Previous](@previous)

import Foundation

// 3. Create an instance of the child class when constructing the parent and add a link from parent to child.

class Person {
    let officeAreaCode = 1234
    private let officeNumber = 123
    let telephone: Telephone
    init(telephone: Telephone) {
        self.telephone = telephone
    }
    func getOfficeNumber() -> Int { return officeNumber }
}

class Telephone {}

//: [Next](@next)
