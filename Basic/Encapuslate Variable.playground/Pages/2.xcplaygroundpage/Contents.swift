//: [Previous](@previous)

// 2. For each reference to the variable, replace with a call to the appropriate encapsulating function. Test after each replacement.

var defaultOwner = ["firstName": "Martin", "lastName": "Fowler"]
func getDefaultOwner() -> [String: String] {
    return defaultOwner
}
func setDefaultOwner(newOwner: [String: String]) {
    defaultOwner = newOwner
}
class SpaceShip {
    let owner = getDefaultOwner()
}

//: [Next](@next)
