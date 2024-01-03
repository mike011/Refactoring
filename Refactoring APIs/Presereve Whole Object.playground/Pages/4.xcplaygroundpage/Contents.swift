//: [Previous](@previous)

import Foundation

// 4. Once all original callers have been changed, use Inline Function on the original function.

struct TempRange { let low, high: Double }
struct Room { let daysTempRange: TempRange }
struct HeatingPlan { let tempRange: TempRange
    func xxNEWwithinRange(daysTempRange: TempRange) -> Bool {
        return daysTempRange.low >= tempRange.low && daysTempRange.high <= tempRange.high
    }
}
struct Day {
    let aRoom: Room; let aPlan: HeatingPlan
    func check() {
        if !aPlan.xxNEWwithinRange(daysTempRange: aRoom.daysTempRange) {
            print("Room temperature went outside range")
        }
    }
}

//: [Next](@next)
