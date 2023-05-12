//: [Previous](@previous)

// 7. If the source method has callers outside the class, move the source’s delegating code from the subclass to the superclass, guarding it with a check for the presence of the delegate. If not, apply Remove Dead Code.

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
