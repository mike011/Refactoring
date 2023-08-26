//: [Previous](@previous)

import Foundation

struct Person {let name: String}

func alertForMiscreant(people: [Person]) -> String? {
    for p in people {
        if p.name == "Don" {
            print("Setting Alarms")
            return "Don"
        }
    }
    return nil
}

let people = [Person(name: "Fred"), Person(name: "John")]
let miscreant = alertForMiscreant(people: people)

//: [Next](@next)

