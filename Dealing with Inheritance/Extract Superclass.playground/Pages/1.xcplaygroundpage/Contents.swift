//: [Previous](@previous)

import Foundation

// 1. Create an empty superclass. Make the original classes its subclasses and test.

class Party {}

class Employee {
    private let name: String; private let id: Int; private let monthlyCost: Double
    init(name: String, id: Int, monthlyCost: Double) {
        self.id = id
        self.name = name
        self.monthlyCost = monthlyCost
    }
    func getMonthlyCost() -> Double { return monthlyCost }
    func getName() -> String { return name }
    func getID() -> Int { return id }
    func getAnnualCost() -> Double { return monthlyCost * 12 }
}

class Department {
    private let name: String; private let staff: [Employee];
    init(name: String, staff: [Employee]) {
        self.name = name
        self.staff = staff
    }
    func getStaff() -> [Employee] { return staff }
    func getName() -> String { return name }
    func getTotalMonthlyCost() -> Double { staff.reduce(0) { $0 + $1.getMonthlyCost() } }
    func getHeadCount() -> Int { return staff.count }
    func getTotalAnnualCost() -> Double { getTotalMonthlyCost() * 12 }
}

let employee = Employee(name: "Bob", id: 2, monthlyCost: 34.33)
let department = Department(name: "Coles", staff: [employee])
let group: Any = [employee, department]

//: [Next](@next)
