//: [Previous](@previous)

import Foundation

// 2. Adjust the client to call the server. Test after each change.

struct Department { let chargeCode: Int }
struct Person {
    let name: String
    let department: Department
    init(name: String, department: Department) { self.name = name; self.department = department }
    var chargeCode: Int {
        return department.chargeCode
    }
}

let person = Person(name: "Frank", department: Department(chargeCode: 25))
let code = person.chargeCode

//: [Next](@next)
