//: [Previous](@previous)

import Foundation

// 4. Use Inline Variable to remove the temp.

class Order {
    private let quantity: Double
    private let itemPrice: Double
    init(quantity: Double, itemPrice: Double) {
        self.quantity = quantity
        self.itemPrice = itemPrice
    }
    var basePrice: Double {
        return quantity * itemPrice
    }
    func getPrice() -> Double {
        var discountFactor = 0.98
        if basePrice > 1000 { discountFactor -= 0.03 }
        return basePrice * discountFactor
    }
}

//: [Next](@next)
