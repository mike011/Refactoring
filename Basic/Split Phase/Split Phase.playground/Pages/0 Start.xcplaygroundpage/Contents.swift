//: [Previous](@previous)

struct Product {
    let basePrice: Int
    let discountRate: Int
    let discountThreshold: Int
}

func priceOrder(product: Product, quantity: Int, shippingMethod: Product) -> Int {
    let basePrice = product.basePrice * quantity
    let discount = max(quantity - product.discountThreshold, 0) * product.basePrice * product.discountRate
    let shippingPerCase = basePrice > shippingMethod.discountThreshold ? shippingMethod.basePrice : shippingMethod.discountRate
    let shippingCost = quantity * shippingPerCase
    let price = basePrice - discount + shippingCost
    return price
}
//: [Next](@next)

