//: [Previous](@previous)

import Foundation

// 1. If classes do not exist for polymorphic behaviour, create them together with a factory function to return the correct instance.

enum BirdType { case europeanSwallow; case africanSwallow; case norwegianBlueParrot; }
struct BirdInfo { let name: String; let type: BirdType; let coconuts: Int; let voltage: Int }
class Bird { let name: String; }
class EuropeanSwallow: Bird { let co}
class BirdChecker {
    func plumages(birds: [BirdInfo]) -> [String] {
        return birds.map { bird in
            return "\(bird.name) \(plumage(bird: bird))"
        }
    }
    func speeds(birds: [BirdInfo]) -> [String] {
        return birds.map { bird in
            return "\(bird.name) \(airSpeedVelocity(bird: bird))"
        }
    }
    func plumage(bird: BirdInfo) -> String {
        switch bird.type {
        case .europeanSwallow:
            return "average"
        case .africanSwallow:
            return bird.coconuts > 2 ? "tired" : "average"
        case .norwegianBlueParrot:
            return bird.voltage > 100 ? "scorched" : "beautiful"
        }
    }
    func airSpeedVelocity(bird: BirdInfo) -> Int {
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
