//: [Previous](@previous)

// 1. Add a special-case check property to the subject, returning false.

import Foundation

protocol Customer {
    var isUnknown: Bool { get set }
    var name: String { get set }
    var billingPlan: String { get set }
    var paymentHistory: String { get set }
}

struct CustomerImpl: Customer {
    var isUnknown = false
    var name: String
    var billingPlan: String
    var paymentHistory: String
}

struct UnknownCustomer: Customer {
    var isUnknown = true
    var name: String
    var billingPlan: String
    var paymentHistory: String
}

struct Site {
    var customer: Customer
}

func isUnknown(_ customer: Customer) -> Bool {
    return customer.isUnknown
}

var customer = Site(customer: CustomerImpl(name: "name", billingPlan: "bp", paymentHistory: "ph")).customer
var name: String?
if isUnknown(customer) {
    name = "occupant"
} else {
    name = customer.name
}

let plan = isUnknown(customer) ? "basic" : customer.billingPlan

if !isUnknown(customer) {
    customer.billingPlan = "newPlan"
}

let weeksDelinquent = isUnknown(customer) ? 0 : customer.paymentHistory.count

//: [Next](@next)
