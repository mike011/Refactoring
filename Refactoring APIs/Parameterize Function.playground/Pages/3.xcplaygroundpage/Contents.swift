//: [Previous](@previous)

import Foundation

// 3. For each caller of the function, add the literal value and test.

class PhoneUsage {
    func baseCharge(usage: Double) -> Double {
        if usage < 0 { return 0 }
        let amount = bottomBand(usage) * 0.03 +
        withinBand(usage, bottom: 100, top: 200) * 0.05 +
        topBand(usage) * 0.07
        return amount
    }
    func bottomBand(_ usage: Double) -> Double {
        return min(usage, 100)
    }
    func withinBand(_ usage: Double, bottom: Double, top: Double) -> Double {
        return usage > 100 ? min(usage, 200) - 100: 0
    }
    func topBand(_ usage: Double) -> Double {
        return usage > 200 ? usage - 200: 0
    }
}

//: [Next](@next)
