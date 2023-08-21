//: [Previous](@previous)

// 2. Find all the callers of the function.

struct Driver {let numberOfLateDeleveries = 10}
func getRating(for driver: Driver) -> Int {
    return moreThanFiveLateDeliveries(for: driver) ? 2 : 1
}
func moreThanFiveLateDeliveries(for driver: Driver) -> Bool {
    return driver.numberOfLateDeleveries > 5
}

//: [Next](@next)
