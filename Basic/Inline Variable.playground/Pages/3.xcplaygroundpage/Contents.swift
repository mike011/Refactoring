//: [Previous](@previous)

// 3. Find the first reference to the variable and replace it with the right-hand side of the assignment and test.

struct Order {let basePrice = 3.53}

let anOrder = Order()
func isExpensive() -> Bool {
    let basePrice = anOrder.basePrice
    print(anOrder.basePrice)
    return anOrder.basePrice > 1000
}

//: [Next](@next)
