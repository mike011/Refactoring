//: [Previous](@previous)

import Foundation

// 6. Consider using Rename Function on the original accessors to better reflect what they do.

struct Processor {
    private var data: Priority
    init(data: [String: Int]) {
        self.data = Priority(data: data)
    }
    func getPriority() -> Priority {
        return data
    }
    mutating func set(data: [String: Int]) {
        self.data = Priority(data: data)
    }
    func filterHighPriority() -> [String: Int] {
        return data.getData().filter { item in
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
