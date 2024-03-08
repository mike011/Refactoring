//: [Previous](@previous)

import Foundation

// Code the refactoring pattern:&nbsp;<b>Encapsulate Record<br></b><img src="paste-162e7831d2ca6b1316b343627caeaac3b0ecb7ce.jpg">
class Company {
    var organization = ["name": "Acme Gooseberries", "country": "GB"]
}
let company = Company()
print(company.organization["name"] ?? "")
company.organization["country"] = "CA"

//: [Next](@next)
