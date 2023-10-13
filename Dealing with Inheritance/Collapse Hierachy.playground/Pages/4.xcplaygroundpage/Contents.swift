//: [Previous](@previous)

import Foundation

// 4. Remove the empty class and test.

class Employee {
    let name: String
    let salary: Double
    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }
    func bonus() -> Double {
        return salary * 0.35
    }
}

let person = Employee(name: "Fred", salary: 50.0)
print("\(person.name) could make a bonus of \(person.bonus())")

//: [Next](@next)
