//: [Previous](@previous)

import Foundation

// 5.  Apply Remove Dead Code to the declaration and updates to the variable.

class ProductionPlan {
    private var adjustments = [Int]()
    func getTotalAdjustment() -> Int {
        return getCalculatedAdjustment()
    }
    private func getCalculatedAdjustment() -> Int {
        return adjustments.reduce(0) { $0 + $1 }
    }
    func applyAdjustment(adjustment: Int) {
        let adjustment2 = adjustment * 2
        adjustments.append(adjustment2)
    }
    func printer() {
        print("Total adjustment is \(getTotalAdjustment())")
    }
}

//: [Next](@next)
