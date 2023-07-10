//: [Previous](@previous)

// 6. Apply Extract Function on the first-phase code, returning the intermediate data structure.

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
    let priceData = getPriceData(product, quantity, shippingMethod)
    let price = applyShippingCost(priceData, quantity, shippingMethod)
    return price
}

func getPriceData(_ product: Product, _ quantity: Int, _ shippingMethod: Product) -> PriceData {
    let basePrice = product.basePrice * quantity
    let discount = max(quantity - product.discountThreshold, 0) * product.basePrice * product.discountRate
    return PriceData(basePrice: basePrice, discount: discount)
}

func applyShippingCost(_ priceData: PriceData, _ quantity: Int, _ shippingMethod: Product) -> Int {
    let shippingPerCase = priceData.basePrice > shippingMethod.discountThreshold ? shippingMethod.basePrice : shippingMethod.discountRate
    let shippingCost = quantity * shippingPerCase
    return priceData.basePrice - priceData.discount + shippingCost
}

//: [Next](@next)
