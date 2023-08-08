//: [Previous](@previous)

struct Order {let basePrice = 3.53}

let anOrder = Order()
func isExpensive() -> Bool {
    var basePrice = anOrder.basePrice
    print(basePrice)
    return basePrice > 1000
}

//: [Next](@next)

