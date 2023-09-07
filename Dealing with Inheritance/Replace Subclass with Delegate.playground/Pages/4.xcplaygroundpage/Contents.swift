//: [Previous](@previous)

// 4. Modify the creation of the superclass so that it initializes the delegate field with an instance of the delegate.

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
