//: [Previous](@previous)

// 2. Create a special-case object with only the special-case check property, returning true.

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
    var name = "Occupant"
    var billingPlan: String {
        get {
            return "basic"
        }
        set {}
    }
    var paymentHistory: String
}

struct Site {
    var customer: Customer
}

var customer = Site(customer: CustomerImpl(name: "name", billingPlan: "bp", paymentHistory: "ph")).customer
var name = customer.name

let plan = customer.billingPlan

customer.billingPlan = "newPlan"

let weeksDelinquent = customer.paymentHistory.count

//: [Next](@next)

//: [Next](@next)
