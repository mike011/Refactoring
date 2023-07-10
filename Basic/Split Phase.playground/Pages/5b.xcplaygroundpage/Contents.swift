//: [Previous](@previous)

// 5b. Examine each parameter of the extracted second phase. If it is used by first phase, move it to the intermediate data structure. Test after each move. (discount)

struct Product {
    let basePrice: Int
    let discountRate: Int
    let discountThreshold: Int
}

struct PriceData {
    let basePrice: Int
    let discount: Int
}

func priceOrder(product: Product, quantity: Int, shippingMethod: Product) -> Int {
    let basePrice = product.basePrice * quantity
    let discount = max(quantity - product.discountThreshold, 0) * product.basePrice * product.discountRate

    let priceData = PriceData(basePrice: basePrice, discount: discount)
    let price = applyShippingCost(priceData, quantity, shippingMethod)
    return price
}

func applyShippingCost(_ priceData: PriceData, _ quantity: Int, _ shippingMethod: Product) -> Int {
    let shippingMethod = shippingMethod
    let shippingPerCase = priceData.basePrice > shippingMethod.discountThreshold ? shippingMethod.basePrice : shippingMethod.discountRate
    let shippingCost = quantity * shippingPerCase
    return priceData.basePrice - priceData.discount + shippingCost
}

//: [Next](@next)
