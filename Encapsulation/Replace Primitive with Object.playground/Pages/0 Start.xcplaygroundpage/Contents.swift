//: [Previous](@previous)

import Foundation

struct Processor {
    private var data: [String: Int]
    init(data: [String: Int]) {
        self.data = data
    }
    func filterHighPriority() -> [String: Int] {
        return data.filter { item in
            item.value > 5
        }
    }
}

//: [Next](@next)

