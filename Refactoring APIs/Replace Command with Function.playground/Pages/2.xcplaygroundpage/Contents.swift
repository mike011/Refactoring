//: [Previous](@previous)

import Foundation

// 2. For each method called by the command’s execution method, apply Inline Function.

struct Customer { let baseRate: Double }
class ChargeCalculator {
    let person: Customer; let baseUsage: Double; let externalProvider: Customer
    init(customer: Customer, usage: Double, provider: Customer) {
        self.person = customer
        self.baseUsage = usage
        self.externalProvider = provider
    }
    func charge() -> Double {
        let baseCharge = person.baseRate * baseUsage
        return baseCharge + externalProvider.baseRate
    }
}
let customer = Customer(baseRate: 0.5)
let provider = Customer(baseRate: 0.3)
let monthCharge = charge(customer: customer, usage: 35, provider: provider)
func charge(customer: Customer, usage: Double, provider: Customer) -> Double {
    return ChargeCalculator(customer: customer, usage: usage, provider: provider).charge()
}

//: [Next](@next)
