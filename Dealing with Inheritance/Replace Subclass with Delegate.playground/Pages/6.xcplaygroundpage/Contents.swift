//: [Previous](@previous)

// 6. Use Move Function to move it to the delegate class. Don’t remove the source’s delegating code.

class Order {
    private var delegate: PriorityOrderDelegate?
    init(priority: Bool = false) {
        if priority {
            self.delegate = PriorityOrderDelegate(order: self)
        }
    }
    func getDaysToShip() -> Int { return 3 }
}
class PriorityOrder: Order {
}
class PriorityOrderDelegate {
    private weak var order: Order?
    init(order: Order) {
        self.order = order
    }
    func getDaysToShip() -> Int { return 2 }
}
let order = Order()
let priorityOrder = PriorityOrder()

//: [Next](@next)
