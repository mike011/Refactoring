//: [Previous](@previous)

// 8. Test Again.

class Subject {
    private let customer: Customer

    init(customer: Customer?) {
        if let customer {
            self.customer = customer
        } else {
            self.customer = UnknownCustomer()
        }
    }

    func printName() {
        print(customer.name)
    }
}

class Customer {
    let name: String
    init(name: String) { self.name = name }
}

class UnknownCustomer: Customer {
    init() {super.init(name: "occupant")}
}

//: [Next](@next)
