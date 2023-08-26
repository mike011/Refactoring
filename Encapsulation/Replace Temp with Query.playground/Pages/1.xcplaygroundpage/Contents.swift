//: [Previous](@previous)

import Foundation

// 1. Check that the variable is determined entirely before it’s used, and the code that calculates it does not yield a different value whenever it is used.

class Order {
    private let quantity: Double
    private let itemPrice: Double
    init(quantity: Double, itemPrice: Double) {
        self.quantity = quantity
        self.itemPrice = itemPrice
    }
    func getPrice() -> Double {
        var basePrice = quantity * itemPrice
        var discountFactor = 0.98
        if basePrice > 1000 { discountFactor -= 0.03 }
        return basePrice * discountFactor
    }
}

//: [Next](@next)
