//: [Previous](@previous)

import Foundation

// 1. Apply Encapsulate Record to the common data record that the functions share.

struct Reading {
    let customer: String
    let quantity: Int
    let month: Int
    let year: Int
}
let reading = Reading(customer: "ivan", quantity: 10, month: 5, year: 2017)

func base(reading: [String: Any]) {}
func taxableCharge(reading: [String: Any]) {}
func calculateBaseCharge(reading: [String: Any]) {}

if reading.customer == "fred" {
    print("Hi Fred")
}

//: [Next](@next)
