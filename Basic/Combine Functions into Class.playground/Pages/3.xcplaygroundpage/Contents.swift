//: [Previous](@previous)

import Foundation

// 3. Each bit of logic that manipulates the data can be extracted with Extract Function and then moved into the new class.

struct Reading {
    let customer: String
    let quantity: Int
    let month: Int
    let year: Int

    func base(reading: [String: Any]) {}
    func taxableCharge(reading: [String: Any]) {}
    func calculateBaseCharge(reading: [String: Any]) {}
    func printHiFred() {
        if customer == "fred" {
            print("Hi Fred")
        }
    }

}
let reading = Reading(customer: "ivan", quantity: 10, month: 5, year: 2017)

reading.printHiFred()
//: [Next](@next)
