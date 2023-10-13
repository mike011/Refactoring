//: [Previous](@previous)

import Foundation

// 1. Select one of the similar methods.

class PhoneUsage {
    func baseCharge(usage: Double) -> Double {
        if usage < 0 { return 0 }
        let amount = bottomBand(usage) * 0.03 +
        middleBand(usage) * 0.05 +
        topBand(usage) * 0.07
        return amount
    }
    func bottomBand(_ usage: Double) -> Double {
        return min(usage, 100)
    }
    func middleBand(_ usage: Double) -> Double {
        return usage > 100 ? min(usage, 200) - 100: 0
    }
    func topBand(_ usage: Double) -> Double {
        return usage > 200 ? usage - 200: 0
    }
}

//: [Next](@next)
