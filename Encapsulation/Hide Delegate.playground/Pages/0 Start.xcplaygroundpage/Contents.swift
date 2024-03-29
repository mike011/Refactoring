//: [Previous](@previous)

import Foundation

struct Department { let chargeCode: Int }
struct Person {
    private let name: String
    let department: Department
    init(name: String, department: Department) { self.name = name; self.department = department }
}

let person = Person(name: "Frank", department: Department(chargeCode: 25))
let code = person.department.chargeCode

//: [Next](@next)

