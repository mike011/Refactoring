//: [Previous](@previous)

// 5. Remove the declaration and assignment of the variable and test.

struct Order {let basePrice = 3.53}

let anOrder = Order()
func isExpensive() -> Bool {
    print(anOrder.basePrice)
    return anOrder.basePrice > 1000
}

//: [Next](@next)
