//: [Previous](@previous)

// 4. Modify the creation of the subclass so that it initializes the delegate field with an instance of the delegate.

class Order {
    private var delegate: PriorityOrderDelegate?
    init(delegate: PriorityOrderDelegate? = nil) {
        self.delegate = delegate
    }
    func getDaysToShip() -> Int {
        return 3
    }
}

class PriorityOrder: Order {
    override func getDaysToShip() -> Int {
        return 2
    }
}

class PriorityOrderDelegate {
}

//: [Next](@next)
