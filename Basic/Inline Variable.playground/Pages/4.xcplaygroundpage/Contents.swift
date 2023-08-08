//: [Previous](@previous)

// 4. Repeat replacing references to the variable until you’ve replaced all of them.

struct Order {let basePrice = 3.53}

let anOrder = Order()
func isExpensive() -> Bool {
    let basePrice = anOrder.basePrice
    print(anOrder.basePrice)
    return anOrder.basePrice > 1000
}
//: [Next](@next)
