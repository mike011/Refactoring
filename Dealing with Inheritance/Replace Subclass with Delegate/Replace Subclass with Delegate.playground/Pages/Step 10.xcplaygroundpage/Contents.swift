//: [Previous](@previous)

// 10. Find all callers of the subclasses’s constructor and change them to use the superclass constructor.

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
