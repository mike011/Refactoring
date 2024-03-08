//: [Previous](@previous)

import Foundation

// 5. Change the name of the new function and all its callers to the original function name.

struct TempRange { let low, high: Double }
struct Room { let daysTempRange: TempRange }
struct HeatingPlan { let tempRange: TempRange
    func withinRange(daysTempRange: TempRange) -> Bool {
        return daysTempRange.low >= tempRange.low && daysTempRange.high <= tempRange.high
    }
}
struct Day {
    let aRoom: Room; let aPlan: HeatingPlan
    func check() {
        if !aPlan.withinRange(daysTempRange: aRoom.daysTempRange) {
            print("Room temperature went outside range")
        }
    }
}

//: [Next](@next)
