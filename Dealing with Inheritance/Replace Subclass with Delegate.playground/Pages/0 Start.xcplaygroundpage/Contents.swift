//: [Previous](@previous)

class Order {
    func getDaysToShip() -> Int { return 3 }
}
class PriorityOrder: Order {
    override func getDaysToShip() -> Int { return 2 }
}
let order = Order()
let priorityOrder = PriorityOrder()

//: [Next](@next)
