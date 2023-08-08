//: [Previous](@previous)

import Foundation

// 7. Consider clarifying the role of the new object as a value or reference object by applying Change Reference to Value or Change Value to Reference.

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
