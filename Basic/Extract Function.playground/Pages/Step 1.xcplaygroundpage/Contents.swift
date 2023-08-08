//: [Previous](@previous)

import Foundation

// 1. Create a new function, and name it after the intent of the function (name it by what it does, not by how it does it).

struct Invoice { let name: String }
func printBanner() {}
func calculateOutstanding() -> Double {return 0.0}
func printDetails() {}

func printOwing(invoice: Invoice) {
    printBanner()
    let outstanding = calculateOutstanding()

    print("name: \(invoice.name)")
    print("amount: \(outstanding)")
}

//: [Next](@next)
