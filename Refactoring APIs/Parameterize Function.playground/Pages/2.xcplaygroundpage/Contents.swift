//: [Previous](@previous)

import Foundation

// 2. Use Change Function Declaration to add any literals that need to turn into parameters.

class PhoneUsage {
    func baseCharge(usage: Double) -> Double {
        if usage < 0 { return 0 }
        let amount = bottomBand(usage) * 0.03 +
        withinBand(usage) * 0.05 +
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
