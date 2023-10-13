//: [Previous](@previous)

import Foundation

// 1. Create a repository for instances of the related object (if one isn’t already present).

struct Customer { let id: Int }
struct Data { let number: Int; let customerId: Int }
class Order {
    let number: Int; let customer: Customer
    init(data: Data) {
        self.number = data.number
        self.customer = Customer(id: data.customerId)
    }
    func getCustomer() -> Customer { return customer }
}
class Repository {
    private var data = [Int: Customer]()
}

//: [Next](@next)
