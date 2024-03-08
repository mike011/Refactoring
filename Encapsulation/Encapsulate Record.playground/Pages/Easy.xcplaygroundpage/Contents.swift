//: [Previous](@previous)

import Foundation

// 1. Use Encapsulate Variable on the variable holding the record.
// 2. Replace the content of the variable with a simple class that wraps the record. Define an accessor inside this class that returns the raw record. Modify the functions that encapsulate the variable to use this accessor and test.
// 3. Provide new functions that return the object rather than the raw record.
// 4. For each user of the record, replace its use of a function that returns the record with a function that returns the object. Use an accessor on the object to get at the field data, creating that accessor if needed. Test after each change.
// 5. Remove the class’s raw data accessor and the easily searchable functions that returned the raw record and test.
// 6. If the fields of the record are themselves structures, consider using Encapsulate Record and Encapsulate Collection recursively.

class Company {
    var organization = ["name": "Acme Gooseberries", "country": "GB"]
}
let company = Company()
print(company.organization["name"] ?? "")
company.organization["country"] = "CA"


//: [Next](@next)
