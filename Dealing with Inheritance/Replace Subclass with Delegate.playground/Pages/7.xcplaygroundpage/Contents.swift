//: [Previous](@previous)

// 7. If the source method has callers outside the class, move the source’s delegating code from the subclass to the superclass, guarding it with a check for the presence of the delegate and test. If not, apply Remove Dead Code.

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
