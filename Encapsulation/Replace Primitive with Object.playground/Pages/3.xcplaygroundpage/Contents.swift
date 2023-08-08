//: [Previous](@previous)

import Foundation

// 3. Change the setter to create a new instance of the value class and store that in the field, changing the type of the field if present.

struct Processor {
    private var data: Priority
    init(data: [String: Int]) {
        self.data = Priority(data: data)
    }
    func getData() -> [String: Int] {
        return data.getData()
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
