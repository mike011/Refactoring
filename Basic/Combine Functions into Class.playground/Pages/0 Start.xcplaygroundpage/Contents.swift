//: [Previous](@previous)

import Foundation

let reading: [String: Any] = ["customer": "ivan", "quantity": 10, "month": 5, "year": 2017]

func base(reading: [String: Any]) {}
func taxableCharge(reading: [String: Any]) {}
func calculateBaseCharge(reading: [String: Any]) {}

if reading["customer"] as! String == "fred" {
    print("Hi Fred")
}

//: [Next](@next)

