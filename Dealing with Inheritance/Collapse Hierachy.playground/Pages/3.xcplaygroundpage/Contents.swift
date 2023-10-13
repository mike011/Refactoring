//: [Previous](@previous)

import Foundation

// 3. Adjust any references to the victim to change them to the class that will stay.

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
class Salesperson: Employee {
}

let person = Employee(name: "Fred", salary: 50.0)
print("\(person.name) could make a bonus of \(person.bonus())")

//: [Next](@next)
