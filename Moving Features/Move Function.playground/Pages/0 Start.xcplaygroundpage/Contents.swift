//: [Previous](@previous)

import Foundation

struct Account {
    var type: AccountType
    var amount: Double
    func getOverdraftCharge() -> Double {
        return amount * 0.25
    }
}

struct AccountType {
}

//: [Next](@next)

