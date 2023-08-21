//: [Previous](@previous)

import Foundation

// 1. Check that the candidate class is immutable or can become immutable.

class Peron {
    let telephone = Telelphone(areaCode: 705, number: 123)
    func getOfficeNumber() -> String { "\(telephone.areaCode) + \(telephone.number)"}
    func setOfficeNumber(newNumber: Int) { telephone.number = newNumber}
}

class Telelphone {
    let areaCode: Int
    let number: Int
    init(areaCode: Int, number: Int) {
        self.areaCode = areaCode
        self.number = number
    }
}

//: [Next](@next)
