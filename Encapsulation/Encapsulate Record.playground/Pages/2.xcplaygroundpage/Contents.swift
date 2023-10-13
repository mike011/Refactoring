//: [Previous](@previous)

import Foundation

// 2. Replace the content of the variable with a simple class that wraps the record. Define an accessor inside this class that returns the raw record. Modify the functions that encapsulate the variable to use this accessor and test.

class Organization {
    var data: [String: String]
    let name: String
    var country: String

    init(data: [String: String]) {
        self.data = data
        self.name = data["name"] ?? ""
        self.country = data["country"] ?? ""
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
