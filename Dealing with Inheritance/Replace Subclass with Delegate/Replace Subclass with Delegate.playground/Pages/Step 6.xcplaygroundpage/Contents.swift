//: [Previous](@previous)

// 6. Use Move Function to move it to the delegate class. Don’t remove the source’s delegating code.

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
    func getDaysToShip() -> Int {
        return 2
    }
}

//: [Next](@next)
