//: [Previous](@previous)

// 2. Create a special-case object with only the special-case check property, returning true.

class Subject {
    let customer: Customer? = Customer(name: "Francine")
    var isSpecial = false

    func printName() {
        if let customer {
            print(customer.name)
        }
        print("occupant")
    }
}

struct Customer {
    let name: String
}

struct SpecialCase {
    var isSpecial = true
}

//: [Next](@next)
