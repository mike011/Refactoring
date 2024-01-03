//: [Previous](@previous)

import Foundation

// 3. Adjust each caller to use the new function, testing after each change.

struct TempRange { let low, high: Double }
struct Room { let daysTempRange: TempRange }
struct HeatingPlan { let tempRange: TempRange
    func withinRange(bottom: Double, top: Double) -> Bool {
        return bottom >= tempRange.low && top <= tempRange.high
    }
    func xxNEWwithinRange(daysTempRange: TempRange) -> Bool {
        return withinRange(bottom: daysTempRange.low, top: daysTempRange.high)
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
