//: [Previous](@previous)

import Foundation

// 3. If no client needs to access the delegate anymore, remove the server’s accessor for the delegate and test

struct Department { let chargeCode: Int }
struct Person {
    let name: String
    private let department: Department
    init(name: String, department: Department) { self.name = name; self.department = department }
    var chargeCode: Int {
        return department.chargeCode
    }
}

let person = Person(name: "Frank", department: Department(chargeCode: 25))
let code = person.chargeCode

//: [Next](@next)
