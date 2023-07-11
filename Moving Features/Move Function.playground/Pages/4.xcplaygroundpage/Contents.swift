//: [Previous](@previous)

import Foundation

// 4. Turn the source function into a delegating function and test.

struct Account {
    var type: AccountType
    var amount: Double
    func getOverdraftCharge() -> Double {
        return type.getOverdraftCharge(amount: amount)
    }
}

struct AccountType {
    func getOverdraftCharge(amount: Double) -> Double {
        return amount * 0.25
    }
}

//: [Next](@next)
