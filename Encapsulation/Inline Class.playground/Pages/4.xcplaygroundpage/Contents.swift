//: [Previous](@previous)

import Foundation

// 4. Delete the source class and hold a short, simple funeral service.

class Person {
    let areaCode = 1234
    private let number = 123
    func getNumber() -> Int { return number }

    func getTelephoneNumber() -> Int {
        return getNumber()
    }
    func getInformation() -> String {
        return "Name \(getTelephoneNumber())"
    }
}

let person = Person()
print("You can reach me at: \(person.getTelephoneNumber())")


//: [Next](@next)
