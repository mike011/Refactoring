//: [Previous](@previous)

import Foundation

// 5. Inline the constructor call and command’s execution method call into the caller (which is the replacement function) and test.

struct Customer { let baseRate: Double }
class ChargeCalculator {
    let person: Customer; let baseUsage: Double; let externalProvider: Customer
    init(customer: Customer, usage: Double, provider: Customer) {
        self.person = customer
        self.baseUsage = usage
        self.externalProvider = provider
    }
    func charge(customer: Customer, usage: Double, provider: Customer) -> Double {
        let baseCharge = customer.baseRate * usage
        return baseCharge + provider.baseRate
    }
}
let customer = Customer(baseRate: 0.5)
let provider = Customer(baseRate: 0.3)
let monthCharge = charge(customer: customer, usage: 35, provider: provider)
func charge(customer: Customer, usage: Double, provider: Customer) -> Double {
    let baseCharge = customer.baseRate * usage
    return baseCharge + provider.baseRate
}

//: [Next](@next)
