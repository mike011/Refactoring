//: [Previous](@previous)

import Foundation

// 5. Remove the source field.

struct CustomerContract { let date: Date; var discountRate: Double}
class Customer {
    let name: String; var contract: CustomerContract
    init(name: String, discountRate: Double) {
        self.name = name;
        self.contract = CustomerContract(date: Date(), discountRate: discountRate)
    }
    func getDiscountRate() -> Double { return contract.discountRate }
    func setDiscountRate(_ newRate: Double) { contract.discountRate = newRate}
    func applyDiscount(amount: Double) -> Double { return amount - amount * contract.discountRate }
    func becomePreferred() { setDiscountRate(contract.discountRate + 0.3) }
}

//: [Next](@next)
