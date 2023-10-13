//: [Previous](@previous)

import Foundation

// 2. Use the factory function in calling code.

enum BirdType { case europeanSwallow; case africanSwallow; case norwegianBlueParrot; }
struct Bird { let name: String; let type: BirdType; let coconuts: Int; let voltage: Int }
class BirdChecker {
    func plumages(birds: [Bird]) -> [String] {
        return birds.map { bird in
            return "\(bird.name) \(plumage(bird: bird))"
        }
    }
    func speeds(birds: [Bird]) -> [String] {
        return birds.map { bird in
            return "\(bird.name) \(airSpeedVelocity(bird: bird))"
        }
    }
    func plumage(bird: Bird) -> String {
        switch bird.type {
        case .europeanSwallow:
            return "average"
        case .africanSwallow:
            return bird.coconuts > 2 ? "tired" : "average"
        case .norwegianBlueParrot:
            return bird.voltage > 100 ? "scorched" : "beautiful"
        }
    }
    func airSpeedVelocity(bird: Bird) -> Int {
        switch bird.type {
        case .europeanSwallow:
            return 35
        case .africanSwallow:
            return 40
        case .norwegianBlueParrot:
            return 10
        }
    }
}

//: [Next](@next)
