//: [Previous](@previous)

import Foundation

// 1. If classes do not exist for polymorphic behaviour, create them together with a factory function to return the correct instance.

enum BirdType { case europeanSwallow; case africanSwallow; case norwegianBlueParrot; }
struct BirdInfo { let name: String; let type: BirdType; let coconuts: Int; let voltage: Int }
class Bird {
    let name: String
    init(name: String) {
        self.name = name
    }
}
class EuropeanSwallow: Bird { }
class AfricanSwallow: Bird {
    let coconuts: Int
    init(name: String, coconuts: Int) { self.coconuts = coconuts; super.init(name: name) }
}
class NorwegianBlueParrot: Bird {
    let voltage: Int;
    init(name: String, voltage: Int) { self.voltage = voltage; super.init(name: name) }
}
class BirdChecker {
    func plumages(infos: [BirdInfo]) -> [String] {
        return infos.map { info in return "\(info.name) \(plumage(info: info))" }
    }
    func speeds(infos: [BirdInfo]) -> [String] {
        return infos.map { info in return "\(info.name) \(airSpeedVelocity(info: info))" }
    }
    func plumage(info: BirdInfo) -> String {
        switch info.type {
        case .europeanSwallow:
            return "average"
        case .africanSwallow:
            return info.coconuts > 2 ? "tired" : "average"
        case .norwegianBlueParrot:
            return info.voltage > 100 ? "scorched" : "beautiful"
        }
    }
    func airSpeedVelocity(info: BirdInfo) -> Int {
        switch info.type {
        case .europeanSwallow:
            return 35
        case .africanSwallow:
            return 40
        case .norwegianBlueParrot:
            return 10
        }
    }
    func get(info: BirdInfo) -> Bird {
        switch info.type {
        case .europeanSwallow:
            return EuropeanSwallow(name: info.name)
        case .africanSwallow:
            return AfricanSwallow(name: info.name, coconuts: info.coconuts)
        case .norwegianBlueParrot:
            return NorwegianBlueParrot(name: info.name, voltage: info.voltage)
        }
    }
}

//: [Next](@next)
