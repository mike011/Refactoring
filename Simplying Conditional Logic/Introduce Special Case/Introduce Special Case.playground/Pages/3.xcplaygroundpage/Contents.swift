//: [Previous](@previous)

// 3. Apply Extract Function to the special-case comparison code. Ensure that all clients use the new function instead of directly comparing it.

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
