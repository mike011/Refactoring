//: [Previous](@previous)

// 5. Choose a subclass method to move to the delegate class.

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
