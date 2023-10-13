//: [Previous](@previous)

import Foundation

// 3. Provide new functions that return the object rather than the raw record.

class Organization {
    var data: [String: String]
    let name: String
    var country: String

    init(data: [String: String]) {
        self.data = data
        self.name = data["name"] ?? ""
        self.country = data["country"] ?? ""
    }
    func getName() -> String {
        return name
    }
}
class Company {
    private var organization = Organization(data: ["name": "Acme Gooseberries", "country": "GB"])
    func getName() -> String {
        return organization.data["name"] ?? ""
    }
    func setCountry(value: String) {
        organization.data["country"] = value
    }
}
let company = Company()
print(company.getName())
company.setCountry(value: "CA")

//: [Next](@next)
