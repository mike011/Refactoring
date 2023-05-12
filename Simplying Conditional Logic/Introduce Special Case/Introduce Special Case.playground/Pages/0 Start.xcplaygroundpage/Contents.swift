//: [Previous](@previous)

class Subject {
    let customer: Customer? = Customer(name: "Francine")

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
