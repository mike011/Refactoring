//: [Previous](@previous)

import Foundation

// 5. Test

struct Processor {
    private var data: Priority
    init(data: [String: Int]) {
        self.data = Priority(data: data)
    }
    func getData() -> Priority {
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
