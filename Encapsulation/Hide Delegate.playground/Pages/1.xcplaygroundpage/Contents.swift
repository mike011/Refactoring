//: [Previous](@previous)

import Foundation

// 1. For each method on the delegate, create a simple delegating method on the server.

struct Department { let chargeCode: Int }
struct Person {
    private let name: String
    init(name: String, department: Department) { self.name = name; self.department = department }
    let department: Department

    var chargeCode: Int {
        return department.chargeCode
    }
}

let person = Person(name: "Frank", department: Department(chargeCode: 25))
let code = person.department.chargeCode

//: [Next](@next)
