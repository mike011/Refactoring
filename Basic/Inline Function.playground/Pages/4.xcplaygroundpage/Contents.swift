//: [Previous](@previous)

// 4. Remove the function definition.

struct Driver {let numberOfLateDeleveries = 10}
func getRating(for driver: Driver) -> Int {
    return driver.numberOfLateDeleveries > 5 ? 2 : 1
}

//: [Next](@next)
