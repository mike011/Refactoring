//: [Previous](@previous)

import Foundation

// 2. Check if the chosen function is a polymorphic method.

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
