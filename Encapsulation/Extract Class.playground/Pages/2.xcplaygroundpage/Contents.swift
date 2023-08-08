//: [Previous](@previous)

import Foundation

// 2. Create a new child class to express the split-off responsibilities.

class Person {
    let officeAreaCode = 1234
    private let officeNumber = 123
    func getOfficeNumber() -> Int { return officeNumber }
}

class Telephone {}

//: [Next](@next)
