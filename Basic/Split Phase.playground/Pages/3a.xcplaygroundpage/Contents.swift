//: [Previous](@previous)

// 3a. Examine each parameter of the extracted second phase. If it is used by first phase, move it to the intermediate data structure. Test after each move. (basePrice)

struct Product {
    let basePrice: Int
    let discountRate: Int
    let discountThreshold: Int
}

struct PriceData {
    let basePrice: Int
}

func priceOrder(product: Product, quantity: Int, shippingMethod: Product) -> Int {
    let basePrice = product.basePrice * quantity
    let discount = max(quantity - product.discountThreshold, 0) * product.basePrice * product.discountRate

    let priceData = PriceData(basePrice: basePrice)
    let price = applyShippingCost(shippingMethod, quantity, discount, priceData)
    return price
}

func applyShippingCost(_ shippingMethod: Product, _ quantity: Int, _ discount: Int, _ priceData: PriceData) -> Int {
    let shippingPerCase = priceData.basePrice > shippingMethod.discountThreshold ? shippingMethod.basePrice : shippingMethod.discountRate
    let shippingCost = quantity * shippingPerCase
    return priceData.basePrice - discount + shippingCost
}

//: [Next](@next)
