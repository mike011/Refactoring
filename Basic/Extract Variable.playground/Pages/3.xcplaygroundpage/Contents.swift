//: [Previous](@previous)

import Foundation

// 3. Replace the original expression with the new variable.

struct Order {
    let quantity: Int
    let itemPrice: Double
}
class Package {
    var priceChecks = [Double]()
    func getPrice(order: Order) -> Double {
        // price is base price - quantity discount + shipping
        let basePrice = order.quantity * order.itemPrice
        return basePrice - max(0, order.quantity - 500) * order.itemPrice * 0.05 + min(basePrice * 0.1, 100)
    }
    func addPriceCheck(amount: Double) {
        priceChecks.append(result)
    }
}

let package = Package()
let price = package.getPrice(order: Order(quantity: 5, itemPrice: 25.33)
print("Your order will cost: " + \(price)))
package.addPriceCheck(amount: price)

//: [Next](@next)
