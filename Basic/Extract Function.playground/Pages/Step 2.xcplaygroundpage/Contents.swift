//: [Previous](@previous)

import Foundation

// 2. Copy the extracted code from the source function into the new target function.

struct Invoice { let name: String }
func printBanner() {}
func calculateOutstanding() -> Double {return 0.0}
func printDetails() {
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
