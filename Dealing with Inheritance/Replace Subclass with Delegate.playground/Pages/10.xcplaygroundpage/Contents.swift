//: [Previous](@previous)

// 10. Use Remove Dead Code on the subclass.

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
class PriorityOrderDelegate {
    private weak var order: Order?
    init(order: Order) {
        self.order = order
    }
    func getDaysToShip() -> Int { return 2 }
}
let order = Order()
let priorityOrder = Order(priority: true)

//: [Next](@next)

