//: [Previous](@previous)

import Foundation

// 5. Look for other code that’s the same or similar to the code just extracted, and consider using Replace Inline Code with Function Call to call the new function.

struct Invoice {
    let name: String
}
func printBanner() {}
func calculateOutstanding() -> Double {return 0.0}
func printDetails(invoice: Invoice, outstanding: Double) {
    print("name: \(invoice.name)")
    print("amount: \(outstanding)")
}

func printOwing(invoice: Invoice) {
    printBanner()
    let outstanding = calculateOutstanding()

    printDetails(invoice: invoice, outstanding: outstanding)
}

//: [Next](@next)
