//: [Previous](@previous)

// 1. If there are many callers for the constructors, apply `Replace Constructor with Factory Function`.

class Order {
    func getDaysToShip() -> Int { return 3 }
}
class PriorityOrder: Order {
    override func getDaysToShip() -> Int { return 2 }
}
let order = Order()
let priorityOrder = PriorityOrder()

//: [Next](@next)
