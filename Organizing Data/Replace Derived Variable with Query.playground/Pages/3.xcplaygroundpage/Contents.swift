//: [Previous](@previous)

import Foundation

// 3. Use Introduce Assertion to assert that the variable and the calculation give the same result whenever the variable is used and test.

class ProductionPlan {
    private var totalAdjustment = 0
    private var adjustments = [Int]()
    func getTotalAdjustment() -> Int {
        assert(totalAdjustment == getCalculatedAdjustment())
        return totalAdjustment
    }
    func getCalculatedAdjustment() -> Int {
        return adjustments.reduce(0) { $0 + $1 }
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
