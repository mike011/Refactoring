//: [Previous](@previous)

// 2. Create an empty class for the delegate. Its constructor should take any subclass-specific data as well as, usually, a back-reference to the superclass.

class Order {
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
