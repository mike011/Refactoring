//: [Previous](@previous)

// 2. Create an empty class for the delegate. Its constructor should take any subclass-specific data as well as, usually, a back-reference to the superclass.

class Order {
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
