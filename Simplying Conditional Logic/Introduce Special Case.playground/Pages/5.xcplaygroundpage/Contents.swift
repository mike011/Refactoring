//: [Previous](@previous)

// 5. Remove all special case code from the Subject.

class Subject {
    private let customer: Customer?

    init(customer: Customer?) {
        if let customer {
            self.customer = customer
        } else {
            self.customer = UnknownCustomer()
        }
    }

    func printName() {
        if let customer {
            print(customer.name)
        }
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
