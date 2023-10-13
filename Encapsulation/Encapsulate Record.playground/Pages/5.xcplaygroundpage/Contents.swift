//: [Previous](@previous)

import Foundation

// 5. Remove the class’s raw data accessor and the easily searchable functions that returned the raw record and test.

class Organization {
    let name: String
    var country: String

    init(data: [String: String]) {
        self.name = data["name"] ?? ""
        self.country = data["country"] ?? ""
    }
    func getName() -> String {
        return name
    }
    func set(country: String) {
        self.country = country
    }
}
class Company {
    private var organization = Organization(data: ["name": "Acme Gooseberries", "country": "GB"])
    func getName() -> String {
        return organization.getName()
    }
    func setCountry(value: String) {
        organization.set(country: value)
    }
}
let company = Company()
print(company.getName())
company.setCountry(value: "CA")

//: [Next](@next)

