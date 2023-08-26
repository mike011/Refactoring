//: [Previous](@previous)

import Foundation

struct Item { let price: Double}
class Order {
    private let quantity: Double
    private let item: Item
    init(quantity: Double, item: Item) {
        self.quantity = quantity
        self.item = item
    }
    func getPrice() -> Double {
        var basePrice = quantity * item.price
        var discountFactor = 0.98
        if basePrice > 1000 { discountFactor -= 0.03 }
        return basePrice * discountFactor
    }
}

//: [Next](@next)

