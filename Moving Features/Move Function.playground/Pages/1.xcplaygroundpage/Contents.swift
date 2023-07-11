//: [Previous](@previous)

import Foundation

// 1. Examine all the program elements used by the chosen function in its current context. Consider whether they should move too.

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
