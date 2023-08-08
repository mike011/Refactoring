//: [Previous](@previous)

import Foundation

// 3. Scan the extracted code for references to any variables that are local in scope to the source function and will not be in scope for the extracted function. Pass them as parameters.

struct Invoice { let name: String }
func printBanner() {}
func calculateOutstanding() -> Double {return 0.0}
func printDetails(invoice: Invoice, outstanding: Double) {
    print("name: \(invoice.name)")
    print("amount: \(outstanding)")
}

func printOwing(invoice: Invoice) {
    printBanner()
    let outstanding = calculateOutstanding()

    print("name: \(invoice.name)")
    print("amount: \(outstanding)")
}

//: [Next](@next)
