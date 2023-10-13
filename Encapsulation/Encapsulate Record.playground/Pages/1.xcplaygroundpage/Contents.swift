//: [Previous](@previous)

import Foundation

// 1. Use Encapsulate Variable on the variable holding the record.

class Company {
    private var organization = ["name": "Acme Gooseberries", "country": "GB"]
    func getName() -> String {
        return organization["name"] ?? ""
    }
    func setCountry(value: String) {
        organization["country"] = value
    }
}
let company = Company()
print(company.getName())
company.setCountry(value: "CA")

//: [Next](@next)
