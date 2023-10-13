//: [Previous](@previous)

import Foundation

// 4. For each field, alter the references in the command’s execution method to use the parameter instead. Test after each change.

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
    return ChargeCalculator(customer: customer, usage: usage, provider: provider)
        .charge(customer: customer, usage: usage, provider: provider)
}

//: [Next](@next)
