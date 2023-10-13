//: [Previous](@previous)

import Foundation

// 1. Inspect all users of the candidate field to ensure they are used in the same way.

class Employee {}

class Salesperson: Employee {
    private let name = ""
}

class Engineer: Employee {
    private let firstName = ""
}

//: [Next](@next)
