//: [Previous](@previous)

import Foundation

// 3. Copy the function to the target context. Adjust it to fit in its new home.

struct Account {
    var type: AccountType
    var amount: Double
    func getOverdraftCharge() -> Double {
        return amount * 0.25
    }
}

struct AccountType {
    func getOverdraftCharge(amount: Double) -> Double {
        return amount * 0.25
    }
}

//: [Next](@next)
