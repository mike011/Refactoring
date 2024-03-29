//: [Previous](@previous)

import Foundation

struct CustomerContract { let date: Date }
class Customer {
    let name: String; var discountRate: Double; let contract: CustomerContract
    init(name: String, discountRate: Double) {
        self.name = name;
        self.discountRate = discountRate
        self.contract = CustomerContract(date: Date())
    }
    func getDiscountRate() -> Double { return discountRate }
    func applyDiscount(amount: Double) -> Double { return amount - amount * discountRate }
    func becomePreferred() { discountRate += 0.3 }
}
//: [Next](@next)

