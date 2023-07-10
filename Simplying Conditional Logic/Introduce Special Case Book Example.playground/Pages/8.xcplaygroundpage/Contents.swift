//: [Previous](@previous)

// 8. Use Inline Function on the special-case comparison function for the places where it’s still needed.

import Foundation

struct Customer {
    var name: String
    var billingPlan: String
    var paymentHistory: String
}

struct Site {
    var customer: Customer?
}

var customer = Site().customer
var name: String?
if customer == nil {
    name = "occupant"
} else {
    name = customer?.name
}

let plan = customer == nil ? "basic" : customer?.billingPlan

if customer != nil {
    customer?.billingPlan = "newPlan"
}

let weeksDelinquent = customer == nil ? 0 : customer?.paymentHistory.count

//: [Next](@next)
