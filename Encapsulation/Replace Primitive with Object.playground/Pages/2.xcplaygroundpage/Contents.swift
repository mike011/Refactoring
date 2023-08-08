//: [Previous](@previous)

import Foundation

// 2. Create a simple value class for the data value. It should take the existing value in its constructor and provide a getter for that value.

struct Processor {
    private var data = [String: Int]()
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

struct Priority {
    private var data = [String: Int]()
    init(data: [String: Int]) {
        self.data = data
    }
    func getData() -> [String: Int] {
        return data
    }
}

//: [Next](@next)
