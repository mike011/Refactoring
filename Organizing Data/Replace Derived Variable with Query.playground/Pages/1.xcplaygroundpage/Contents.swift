//: [Previous](@previous)

import Foundation

// 1. Identify all points of update for the variable. If necessary, use Split Variable to separate each point of update.

class ProductionPlan {
    private var totalAdjustment = 0
    private var adjustments = [Int]()
    func getTotalAdjustment() -> Int {
        return totalAdjustment
    }
    func applyAdjustment(adjustment: Int) {
        let adjustment2 = adjustment * 2
        adjustments.append(adjustment2)
        let adjustment3 = adjustment * 2
        totalAdjustment += adjustment3
    }
    func printer() {
        print("Total adjustment is \(totalAdjustment)")
    }
}
//: [Next](@next)
