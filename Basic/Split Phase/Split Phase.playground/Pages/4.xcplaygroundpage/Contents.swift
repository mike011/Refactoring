//: [Previous](@previous)

// 4. Test

struct Product {
    let basePrice: Int
    let discountRate: Int
    let discountThreshold: Int
}

struct PriceData {}

func priceOrder(product: Product, quantity: Int, shippingMethod: Product) -> Int {
    let basePrice = product.basePrice * quantity
    let discount = max(quantity - product.discountThreshold, 0) * product.basePrice * product.discountRate

    let priceData = PriceData()
    let price = applyShippingCost(basePrice, shippingMethod, quantity, discount, priceData)
    return price
}

func applyShippingCost(_ basePrice: Int, _ shippingMethod: Product, _ quantity: Int, _ discount: Int, _ priceData: PriceData) -> Int {
    let shippingPerCase = basePrice > shippingMethod.discountThreshold ? shippingMethod.basePrice : shippingMethod.discountRate
    let shippingCost = quantity * shippingPerCase
    return basePrice - discount + shippingCost
}

//: [Next](@next)
