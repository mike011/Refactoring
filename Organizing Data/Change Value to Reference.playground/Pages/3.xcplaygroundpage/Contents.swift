//: [Previous](@previous)

import Foundation

// 3. Change the constructors for the host object to use the repository to obtain the related object. Test after each change.

struct Customer { let id: Int }
struct Data { let number: Int; let customerId: Int }
class Order {
    let number: Int; let customer: Customer
    init(data: Data, repo: Repository) {
        self.number = data.number
        if let customer = repo.find(id: data.customerId) {
            self.customer = customer
        } else {
            self.customer = repo.register(id: data.customerId)
        }
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
