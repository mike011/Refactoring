//: [Previous](@previous)

// 2. If the variable isn’t already declared immutable, do so and test.

struct Order {let basePrice = 3.53}

let anOrder = Order()
func isExpensive() -> Bool {
    let basePrice = anOrder.basePrice
    print(basePrice)
    return basePrice > 1000
}

//: [Next](@next)
