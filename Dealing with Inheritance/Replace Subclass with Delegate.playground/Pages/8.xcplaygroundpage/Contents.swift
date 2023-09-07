//: [Previous](@previous)

// 9. Repeat until all the methods of the subclass are moved.

class Order {
    private var delegate: PriorityOrderDelegate?
    init(priority: Bool = false) {
        if priority {
            self.delegate = PriorityOrderDelegate(order: self)
        }
    }
    func getDaysToShip() -> Int {
        if let delegate {
            return delegate.getDaysToShip()
        }
        return 3
    }
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
