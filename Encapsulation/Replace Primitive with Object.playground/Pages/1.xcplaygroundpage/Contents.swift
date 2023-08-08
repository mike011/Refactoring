//: [Previous](@previous)

import Foundation

// 1. Apply Encapsulate Variable if it isn’t already.

struct Processor {
    private var data: [String: Int]
    init(data: [String: Int]) {
        self.data = data
    }
    func getData() -> [String: Int] {
        return data
    }
    mutating func set(data: [String: Int]) {
        self.data = data
    }
    func filterHighPriority() -> [String: Int] {
        return data.filter { item in
            item.value > 5
        }
    }
}

//: [Next](@next)
