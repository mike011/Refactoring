//: [Previous](@previous)

import Foundation

class Company {
    var organization = ["name": "Acme Gooseberries", "country": "GB"]
}
let company = Company()
print(company.organization["name"] ?? "")
company.organization["country"] = "CA"

//: [Next](@next)

