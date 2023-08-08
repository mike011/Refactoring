//: [Previous](@previous)

// 1. Create encapsulating functions to access and update the variable.

var defaultOwner = ["firstName": "Martin", "lastName": "Fowler"]
func getDefaultOwner() -> [String: String] {
    return defaultOwner
}
func setDefaultOwner(newOwner: [String: String]) {
    defaultOwner = newOwner
}
class SpaceShip {
    let owner = defaultOwner
}

//: [Next](@next)
