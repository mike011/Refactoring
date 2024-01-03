//: [Previous](@previous)

import Foundation

struct TempRange { let low, high: Double }
struct Room { let daysTempRange: TempRange }
struct HeatingPlan { let tempRange: TempRange
    func withinRange(bottom: Double, top: Double) -> Bool {
        return bottom >= tempRange.low && top <= tempRange.high
    }
}
struct Day {
    let aRoom: Room; let aPlan: HeatingPlan
    func check() {
        let low = aRoom.daysTempRange.low
        let high = aRoom.daysTempRange.high
        if !aPlan.withinRange(bottom: low, top: high) {
            print("Room temperature went outside range")
        }
    }
}

//: [Next](@next)

