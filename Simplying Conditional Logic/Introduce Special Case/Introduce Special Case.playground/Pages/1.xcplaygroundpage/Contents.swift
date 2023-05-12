//: [Previous](@previous)

// 1. Add a special-case check property to the subject, returning false.

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

//: [Next](@next)
