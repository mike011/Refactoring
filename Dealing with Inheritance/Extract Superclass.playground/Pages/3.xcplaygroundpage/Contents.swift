//: [Previous](@previous)

import Foundation

// 3. Examine remaining methods on the subclasses. See if there are common parts. If so, use Extract Function followed by Pull Up Method.

class Party {
    private let name: String;
    init(name: String) {
        self.name = name
    }
    func getName() -> String { return name }
    func getMonthlyCost() -> Double { return 0.0 }
    func getAnnualCost() -> Double { return getMonthlyCost() * 12 }
}

class Employee: Party {
    private let id: Int; private let monthlyCost: Double
    init(name: String, id: Int, monthlyCost: Double) {
        self.id = id
        self.monthlyCost = monthlyCost
        super.init(name: name)
    }
    override func getMonthlyCost() -> Double { return monthlyCost }
    func getID() -> Int { return id }
}

class Department: Party {
    private let staff: [Employee];
    init(name: String, staff: [Employee]) {
        self.staff = staff
        super.init(name: name)
    }
    func getStaff() -> [Employee] { return staff }
    override func getMonthlyCost() -> Double { staff.reduce(0) { $0 + $1.getMonthlyCost() } }
    func getHeadCount() -> Int { return staff.count }
}

let employee = Employee(name: "Bob", id: 2, monthlyCost: 34.33)
let department = Department(name: "Coles", staff: [employee])
let group: Any = [employee, department]

//: [Next](@next)
