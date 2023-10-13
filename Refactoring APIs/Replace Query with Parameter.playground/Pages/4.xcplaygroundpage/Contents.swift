//: [Previous](@previous)

import Foundation

// 4. Apply Inline Function to the original function.

class Thermostat { let selectedTemperature = 0 }
class HeatingPlan {
    private let thermostat: Thermostat; private let max = 100; private let min = 0; private let targetTemperature = 0
    init(thermostat: Thermostat) {
        self.thermostat = thermostat
    }
    func getTargetTemperature() -> Int {
        return xxNEWtargetTemperature(selectedTemperature: thermostat.selectedTemperature)
    }
    func xxNEWtargetTemperature(selectedTemperature: Int) -> Int {
        if selectedTemperature > max { return max }
        if selectedTemperature < min { return min }
        return selectedTemperature
    }
}
let thermostat = Thermostat()
let plan = HeatingPlan(thermostat: thermostat)
if plan.xxNEWtargetTemperature(selectedTemperature: thermostat.selectedTemperature) > thermostat.selectedTemperature { print("Turning Heater On") }
else if plan.xxNEWtargetTemperature(selectedTemperature: thermostat.selectedTemperature) < thermostat.selectedTemperature { print("Turning Cooler On") }
else { print("Turning Pumps Off") }

//: [Next](@next)
