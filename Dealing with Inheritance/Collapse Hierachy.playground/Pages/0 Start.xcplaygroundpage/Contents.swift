//: [Previous](@previous)

import Foundation

class Employee {
    let name: String
    init(name: String) {
        self.name = name
    }
}
class Salesperson: Employee {
    let salary: Double
    init(name: String, salary: Double) {
        self.salary = salary
        super.init(name: name)
    }
    func bonus() -> Double {
        return salary * 0.35
    }
}

let person = Salesperson(name: "Fred", salary: 50.0)
print("\(person.name) could make a bonus of \(person.bonus())")

//: [Next](@next)

