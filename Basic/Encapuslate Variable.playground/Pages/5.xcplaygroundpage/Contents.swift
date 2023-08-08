//: [Previous](@previous)

// 5. If the value of the variable is a record, consider Encapsulate Record.

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
