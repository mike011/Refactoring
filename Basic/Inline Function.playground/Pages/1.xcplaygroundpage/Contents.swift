//: [Previous](@previous)

// 1. Check that this isn’t a polymorphic method.

struct Driver {let numberOfLateDeleveries = 10}
func getRating(for driver: Driver) -> Int {
    return moreThanFiveLateDeliveries(for: driver) ? 2 : 1
}
func moreThanFiveLateDeliveries(for driver: Driver) -> Bool {
    return driver.numberOfLateDeleveries > 5
}

//: [Next](@next)
