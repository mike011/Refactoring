//: [Previous](@previous)

import Foundation

struct People {let name: String}

func alertForMiscreant(people: [People]) -> String {
    for p in people {
        if p.name == "Don" {
            print("Setting Alarms")
            return "Don"
        }
        if p.name == "John" {
            print("Setting Alarms")
            return "John"
        }
    }
    return ""
}

//: [Next](@next)

