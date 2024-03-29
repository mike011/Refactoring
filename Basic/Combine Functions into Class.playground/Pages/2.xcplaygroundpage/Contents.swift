//: [Previous](@previous)

import Foundation

// 2. Take each function that uses the common record and use Move Function to move it into the new class.

struct Reading {
    let customer: String
    let quantity: Int
    let month: Int
    let year: Int

    func base(reading: [String: Any]) {}
    func taxableCharge(reading: [String: Any]) {}
    func calculateBaseCharge(reading: [String: Any]) {}

}
let reading = Reading(customer: "ivan", quantity: 10, month: 5, year: 2017)

if reading.customer == "fred" {
    print("Hi Fred")
}

//: [Next](@next)
