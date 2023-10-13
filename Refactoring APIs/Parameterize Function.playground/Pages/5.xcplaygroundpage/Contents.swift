//: [Previous](@previous)

import Foundation

// 5. For each similar function, replace the call with a call to the parameterized function. Test after each one.

class PhoneUsage {
    func baseCharge(usage: Double) -> Double {
        if usage < 0 { return 0 }
        let amount = withinBand(usage, bottom: 0, top: 100) * 0.03 +
        withinBand(usage, bottom: 100, top: 200) * 0.05 +
        withinBand(usage, bottom: 200, top: Double.infinity) * 0.07
        return amount
    }
    func withinBand(_ usage: Double, bottom: Double, top: Double) -> Double {
        return usage > bottom ? min(usage, top) - bottom: 0
    }
}

//: [Next](@next)
