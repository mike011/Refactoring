//: [Previous](@previous)

import Foundation

// 2. Use Pull Up Field, Push Down Field, Pull Up Method, and Push Down Method to move all the elements into a single class.

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

let person = Salesperson(name: "Fred", salary: 50.0)
print("\(person.name) could make a bonus of \(person.bonus())")

//: [Next](@next)
