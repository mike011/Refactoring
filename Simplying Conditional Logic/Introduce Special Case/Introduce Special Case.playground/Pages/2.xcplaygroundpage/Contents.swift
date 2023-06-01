//: [Previous](@previous)

// 2. Create a special case object extending the base class.

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
}

//: [Next](@next)
