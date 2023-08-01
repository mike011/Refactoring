//: [Previous](@previous)

import Foundation

// 3. Rename the private field inside the object, adjust internal methods to fit.

class Organization {
    private let title: String
    private let country: String
    init(name: String, code: String) {
        self.title = name
        self.country = code
    }
}

//: [Next](@next)
