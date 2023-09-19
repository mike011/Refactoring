//: [Previous](@previous)

import Foundation

// 4. Replace any reader of the variable with a call to the new function and test.

class ProductionPlan {
    private var totalAdjustment = 0
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
        let adjustment3 = adjustment * 2
        totalAdjustment += adjustment3
    }
    func printer() {
        print("Total adjustment is \(getTotalAdjustment())")
    }
}

//: [Next](@next)
