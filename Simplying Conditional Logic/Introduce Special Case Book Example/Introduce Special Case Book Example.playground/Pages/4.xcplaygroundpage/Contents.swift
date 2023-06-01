//: [Previous](@previous)

// 4. Introduce the new special-case subject into the code, either by returning it from a function call or by applying a transform function.

class Subject {
    let customer: Customer? = Customer(name: "Francine")
    var isSpecial = false

    func printName() {
       print(getName())
    }

    private func getName() -> String {
        if let customer {
            return customer.name
        }
        return "occupant"
    }
}

struct Customer {
    let name: String
}

struct SpecialCase {
    var isSpecial = true
}

//: [Next](@next)
