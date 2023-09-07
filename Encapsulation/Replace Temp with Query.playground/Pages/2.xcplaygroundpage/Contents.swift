//: [Previous](@previous)

import Foundation

// 2. If the variable isn’t read-only, and can be made read-only, do so an test.

class Order {
    private let quantity: Double
    private let itemPrice: Double
    init(quantity: Double, itemPrice: Double) {
        self.quantity = quantity
        self.itemPrice = itemPrice
    }
    func getPrice() -> Double {
        let basePrice = quantity * itemPrice
        var discountFactor = 0.98
        if basePrice > 1000 { discountFactor -= 0.03 }
        return basePrice * discountFactor
    }
}

//: [Next](@next)
