//: [Previous](@previous)

import Foundation

// 5. Consider Inline Function on the source function.

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
