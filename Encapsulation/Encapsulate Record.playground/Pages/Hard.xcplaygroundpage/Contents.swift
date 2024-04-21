//: [Previous](@previous)

import Foundation

// Code the refactoring pattern:&nbsp;<b>Encapsulate Record<br></b><img src="paste-162e7831d2ca6b1316b343627caeaac3b0ecb7ce.jpg">

struct Org {
    var name: String
    var country: String

    init(data: [String : String]) {
        self.name = data.organization["name", default: ""]
        self.country = data["country", default: ""]
    }
}

class Company {
    var org = Org(data: ["name": "Acme Gooseberries", "country": "GB"])

    func getName() -> String {
        return org.name
    }

    func setCountry(name: String) {
        org.country = name
    }
}
let company = Company()
print(company.getName())
company.setCountry(name: "CA")

//: [Next](@next)
