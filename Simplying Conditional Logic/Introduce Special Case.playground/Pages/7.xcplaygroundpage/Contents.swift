//: [Previous](@previous)

// 7. Remove the optionality of customer class and update any references.

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
