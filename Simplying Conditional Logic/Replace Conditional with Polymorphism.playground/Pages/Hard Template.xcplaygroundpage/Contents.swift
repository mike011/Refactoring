//: [Previous](@previous)

import Foundation

// Refactor the follwoing by using: `Replace Conditional with Polymorphism`

enum BirdType { case europeanSwallow; case africanSwallow; case norwegianBlueParrot; }
struct BirdInfo { let name: String; let type: BirdType; let coconuts: Int; let voltage: Int }
class BirdChecker {
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
}
