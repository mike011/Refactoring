//: [Previous](@previous)

import Foundation

// 2. Ensure the constructor has a way of looking up the correct instance of the related object.

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
    func register(id: Int) -> Customer {
        if data[id] == nil {
            data[id] = Customer(id: id)
        }
        return find(id: id)!
    }
    func find(id: Int) -> Customer? { return data[id] }
}

//: [Next](@next)
