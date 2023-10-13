//: [Previous](@previous)

import Foundation

// 4. Repeat for each leg of the conditional.

enum BirdType { case europeanSwallow; case africanSwallow; case norwegianBlueParrot; }
struct BirdInfo { let name: String; let type: BirdType; let coconuts: Int; let voltage: Int }
class Bird {
    let name: String
    init(name: String) {
        self.name = name
    }
    func plumage() -> String {
        return ""
    }
}
class EuropeanSwallow: Bird {
    override func plumage() -> String { return "average" }
}
class AfricanSwallow: Bird {
    private let coconuts: Int
    init(name: String, coconuts: Int) { self.coconuts = coconuts; super.init(name: name) }
    override func plumage() -> String { return coconuts > 2 ? "tired" : "average" }
}
class NorwegianBlueParrot: Bird {
    private let voltage: Int;
    init(name: String, voltage: Int) { self.voltage = voltage; super.init(name: name) }
    override func plumage() -> String { return voltage > 100 ? "scorched" : "beautiful" }
}
class BirdChecker {
    func plumage(info: BirdInfo) -> String {
        switch info.type {
        case .europeanSwallow:
            return createBird(from: info).plumage()
        case .africanSwallow:
            return createBird(from: info).plumage()
        case .norwegianBlueParrot:
            return createBird(from: info).plumage()
        }
    }
    func createBird(from info: BirdInfo) -> Bird {
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
