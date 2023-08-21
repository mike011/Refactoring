//: [Previous](@previous)

import Foundation

class Peron {
    var telephone = Telelphone()
    func getOfficeNumber() -> String { "\(telephone.areaCode) + \(telephone.number)"}
    func setOfficeNumber(newNumber: Int) { telephone.number = newNumber}
}

class Telelphone {
    var areaCode: Int = 705
    var number: Int = 123
}

//: [Next](@next)

