//: [Previous](@previous)

import Foundation

// 2. Apply Extract Function to the body code that isn’t the call to the query.

class Thermostat { let selectedTemperature = 0 }
class HeatingPlan {
    private let thermostat: Thermostat; private let max = 100; private let min = 0; private let targetTemperature = 0
    init(thermostat: Thermostat) {
        self.thermostat = thermostat
    }
    func getTargetTemperature() -> Int {
        let selectedTemperature = thermostat.selectedTemperature
        return xxNEWtargetTemperature(selectedTemperature: selectedTemperature)
    }
    func xxNEWtargetTemperature(selectedTemperature: Int) -> Int {
        if selectedTemperature > max { return max }
        if selectedTemperature < min { return min }
        return selectedTemperature
    }
}
let thermostat = Thermostat()
let plan = HeatingPlan(thermostat: thermostat)
if plan.getTargetTemperature() > thermostat.selectedTemperature { print("Turning Heater On") }
else if plan.getTargetTemperature() < thermostat.selectedTemperature { print("Turning Cooler On") }
else { print("Turning Pumps Off") }

//: [Next](@next)
