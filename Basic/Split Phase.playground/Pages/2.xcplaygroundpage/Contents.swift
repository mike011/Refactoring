//: [Previous](@previous)

// 2. Test

struct Product {
    let basePrice: Int
    let discountRate: Int
    let discountThreshold: Int
}

func priceOrder(product: Product, quantity: Int, shippingMethod: Product) -> Int {
    let basePrice = product.basePrice * quantity
    let discount = max(quantity - product.discountThreshold, 0) * product.basePrice * product.discountRate

    let price = applyShippingCost(basePrice, shippingMethod, quantity, discount)
    return price
}

func applyShippingCost(_ basePrice: Int, _ shippingMethod: Product, _ quantity: Int, _ discount: Int) -> Int {
    let shippingPerCase = basePrice > shippingMethod.discountThreshold ? shippingMethod.basePrice : shippingMethod.discountRate
    let shippingCost = quantity * shippingPerCase
    return basePrice - discount + shippingCost
}

//: [Next](@next)
