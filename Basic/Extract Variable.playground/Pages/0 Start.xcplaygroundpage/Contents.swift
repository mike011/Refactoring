//: [Previous](@previous)

import Foundation

struct Order {
    let quantity: Int
    let itemPrice: Double
}
class Package {
    private var priceChecks = [Double]()
    func getPrice(order: Order) -> Double {
        // price is base price - quantity discount + shipping
        let result = order.quantity * order.itemPrice - max(0, order.quantity - 500) * order.itemPrice * 0.05 + min(order.quantity * order.itemPrice * 0.1, 100)
        priceChecks.append(result)
        return result
    }
}
let package = Package()
let price = package.getPrice(order: Order(quantity: 5, itemPrice: 25.33)
print("Your order will cost: " + \(price)))

//: [Next](@next)
