//: [Previous](@previous)

import Foundation

// 2. If the record isn’t already encapsulated, apply Encapsulate Record.

class Organization {
    private let name: String
    private let code: String
    init(name: String, code: String) {
        self.name = name
        self.code = code
    }
}

//: [Next](@next)
