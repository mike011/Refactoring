//: [Previous](@previous)

import Foundation

// 4. For each user of the record, replace its use of a function that returns the record with a function that returns the object. Use an accessor on the object to get at the field data, creating that accessor if needed. Test after each change.

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
