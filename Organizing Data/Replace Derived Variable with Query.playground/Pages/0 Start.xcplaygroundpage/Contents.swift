//: [Previous](@previous)

import Foundation

class ProductionPlan {
    private var totalAdjustment = 0
    private var adjustments = [Int]()
    func getTotalAdjustment() -> Int {
        return totalAdjustment
    }
    func applyAdjustment(adjustment: Int) {
        var adjustment2 = adjustment * 2
        adjustments.append(adjustment2)
        adjustment2 = adjustment * 2
        totalAdjustment += adjustment2
    }
    func printer() {
        print("Total adjustment is \(totalAdjustment)")
    }
}
//: [Next](@next)

