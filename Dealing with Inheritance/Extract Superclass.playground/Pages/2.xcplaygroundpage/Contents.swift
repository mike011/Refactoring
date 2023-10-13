//: [Previous](@previous)

import Foundation

// 2. One by one, use Pull Up Constructor Body, Pull Up Method, and Pull Up Field to move common elements to the superclass.

class Party {
    private let name: String;
    init(name: String) {
        self.name = name
    }
    func getName() -> String { return name }
}

class Employee: Party {
    private let id: Int; private let monthlyCost: Double
    init(name: String, id: Int, monthlyCost: Double) {
        self.id = id
        self.monthlyCost = monthlyCost
        super.init(name: name)
    }
    func getMonthlyCost() -> Double { return monthlyCost }
    func getID() -> Int { return id }
    func getAnnualCost() -> Double { return getMonthlyCost() * 12 }
}

class Department: Party {
    private let staff: [Employee];
    init(name: String, staff: [Employee]) {
        self.staff = staff
        super.init(name: name)
    }
    func getStaff() -> [Employee] { return staff }
    func getTotalMonthlyCost() -> Double { staff.reduce(0) { $0 + $1.getMonthlyCost() } }
    func getHeadCount() -> Int { return staff.count }
    func getTotalAnnualCost() -> Double { getTotalMonthlyCost() * 12 }
}

let employee = Employee(name: "Bob", id: 2, monthlyCost: 34.33)
let department = Department(name: "Coles", staff: [employee])
let group: Any = [employee, department]

//: [Next](@next)
