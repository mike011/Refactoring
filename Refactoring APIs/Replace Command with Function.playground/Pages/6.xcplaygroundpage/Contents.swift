//: [Previous](@previous)

import Foundation

// 6. Apply Remove Dead Code to the command class.

struct Customer { let baseRate: Double }
let customer = Customer(baseRate: 0.5)
let provider = Customer(baseRate: 0.3)
let monthCharge = charge(customer: customer, usage: 35, provider: provider)
func charge(customer: Customer, usage: Double, provider: Customer) -> Double {
    let baseCharge = customer.baseRate * usage
    return baseCharge + provider.baseRate
}
//: [Next](@next)
