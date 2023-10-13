//: [Previous](@previous)

import Foundation

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

//: [Next](@next)

