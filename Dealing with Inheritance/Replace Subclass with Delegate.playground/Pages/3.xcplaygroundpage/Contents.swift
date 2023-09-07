//: [Previous](@previous)

// 3. Add a field to the superclass to hold the delegate.

class Order {
    private var delegate: PriorityOrderDelegate?
    func getDaysToShip() -> Int { return 3 }
}
class PriorityOrder: Order {
    override func getDaysToShip() -> Int { return 2 }
}
class PriorityOrderDelegate {
    private weak var order: Order?
    init(order: Order) {
        self.order = order
    }
}
let order = Order()
let priorityOrder = PriorityOrder()

//: [Next](@next)
