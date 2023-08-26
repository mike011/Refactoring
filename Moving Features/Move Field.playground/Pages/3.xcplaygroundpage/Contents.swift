//: [Previous](@previous)

import Foundation

// 3. Ensure there is a reference from the source object to the target object.

struct CustomerContract { let date: Date; var discountRate: Double}
class Customer {
    let name: String; var discountRate: Double; let contract: CustomerContract
    init(name: String, discountRate: Double) {
        self.name = name;
        self.discountRate = discountRate
        self.contract = CustomerContract(date: Date(), discountRate: discountRate)
    }
    func getDiscountRate() -> Double { return discountRate }
    func setDiscountRate(_ newRate: Double) { discountRate = newRate}
    func applyDiscount(amount: Double) -> Double { return amount - amount * discountRate }
    func becomePreferred() { setDiscountRate(discountRate + 0.3) }
}

//: [Next](@next)
