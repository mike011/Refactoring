//: [Previous](@previous)

import Foundation

// 2. For each setter, apply Remove Setting Method.

class Peron {
    let telephone = Telelphone(areaCode: 705, number: 123)
    func getOfficeNumber() -> String { "\(telephone.areaCode) + \(telephone.number)"}
    func setOfficeNumber(newNumber: Int) { Telelphone(areaCode: 705, number: newNumber)}
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
