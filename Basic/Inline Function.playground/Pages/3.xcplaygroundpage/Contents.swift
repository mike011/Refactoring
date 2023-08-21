//: [Previous](@previous)

// 3. Replace each call with the function’s body and test.

struct Driver {let numberOfLateDeleveries = 10}
func getRating(for driver: Driver) -> Int {
    return driver.numberOfLateDeleveries > 5 ? 2 : 1
}
func moreThanFiveLateDeliveries(for driver: Driver) -> Bool {
    return driver.numberOfLateDeleveries > 5
}

//: [Next](@next)
