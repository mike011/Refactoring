//: [Previous](@previous)

import Foundation

// 1. Use Extract Variable on the query code to separate it from the rest of the function body.

class Thermostat { let selectedTemperature = 0 }
class HeatingPlan {
    private let thermostat: Thermostat; private let max = 100; private let min = 0; private let targetTemperature = 0
    init(thermostat: Thermostat) {
        self.thermostat = thermostat
    }
    func getTargetTemperature() -> Int {
        let selectedTemperature = thermostat.selectedTemperature
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
