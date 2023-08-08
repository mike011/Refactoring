//: [Previous](@previous)

import Foundation

struct Invoice { let name: String }
func printBanner() {}
func calculateOutstanding() -> Double {return 0.0}

func printOwing(invoice: Invoice) {
    printBanner()
    let outstanding = calculateOutstanding()

    print("name: \(invoice.name)")
    print("amount: \(outstanding)")
}

//: [Next](@next)
