//: [Previous](@previous)

import Foundation

// Refactor the follwoing by using: `Replace Conditional with Polymorphism`

// 1. If classes do not exist for polymorphic behaviour, create them together with a factory function to return the correct instance.
// 2. Copy the conditional function to the superclass.
// 3. Pick one of the subclasses. Create a subclass method that overrides the conditional statement method. Copy the body of that leg of the conditional statement into the subclass method and adjust it to fit.
// 4. Repeat for each leg of the conditional.
// 5. Remove the switch statement.

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
