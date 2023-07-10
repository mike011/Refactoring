//: [Previous](@previous)

// 8. Test.

class Order {
    private var delegate: PriorityOrderDelegate?
    init(delegate: PriorityOrderDelegate? = nil) {
        self.delegate = delegate
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
    func getDaysToShip() -> Int {
        return 2
    }
}

//: [Next](@next)
