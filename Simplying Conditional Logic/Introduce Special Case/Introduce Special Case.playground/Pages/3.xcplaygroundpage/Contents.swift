//: [Previous](@previous)

// 3. In the new class create a special case init filling in the special properties.

class Subject {
    private let customer: Customer?

    init(customer: Customer?) {
        self.customer = customer
    }

    func printName() {
        if let customer {
            print(customer.name)
        }
        print("occupant")
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
