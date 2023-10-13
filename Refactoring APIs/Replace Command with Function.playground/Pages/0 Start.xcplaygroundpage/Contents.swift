//: [Previous](@previous)

import Foundation

struct Customer { let baseRate: Double }
class ChargeCalculator {
    let person: Customer; let baseUsage: Double; let externalProvider: Customer
    init(customer: Customer, usage: Double, provider: Customer) {
        self.person = customer
        self.baseUsage = usage
        self.externalProvider = provider
    }
    func baseCharge() -> Double {
        return person.baseRate * baseUsage
    }
    func charge() -> Double {
        return baseCharge() + externalProvider.baseRate
    }
}
let customer = Customer(baseRate: 0.5)
let provider = Customer(baseRate: 0.3)
let monthCharge = ChargeCalculator(customer: customer, usage: 35, provider: provider).charge()

//: [Next](@next)

