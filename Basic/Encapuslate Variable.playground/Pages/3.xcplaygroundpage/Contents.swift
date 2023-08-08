//: [Previous](@previous)

// 3. Restrict the visibility of the variable.

var defaultOwner = ["firstName": "Martin", "lastName": "Fowler"]
func getDefaultOwner() -> [String: String] {
    return defaultOwner
}
func setDefaultOwner(newOwner: [String: String]) {
    defaultOwner = newOwner
}
class SpaceShip {
    private let owner = getDefaultOwner()
}

//: [Next](@next)
