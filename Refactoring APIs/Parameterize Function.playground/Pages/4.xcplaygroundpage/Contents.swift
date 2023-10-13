//: [Previous](@previous)

import Foundation

// 4. Change the body of the function to use the new parameters. Test after each change.

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
        return usage > bottom ? min(usage, top) - bottom: 0
    }
    func topBand(_ usage: Double) -> Double {
        return usage > 200 ? usage - 200: 0
    }
}

//: [Next](@next)
