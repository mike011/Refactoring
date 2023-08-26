//: [Previous](@previous)

import Foundation

// 4. Remove return values from original and test.

struct Person {let name: String}

func findMiscreant(people: [Person]) -> String? {
    for p in people {
        if p.name == "Don" {
            return "Don"
        }
    }
    return nil
}

func alertForMiscreant(people: [Person]) {
    for p in people {
        if p.name == "Don" {
            print("Setting Alarms")
        }
    }
}

let people = [Person(name: "Fred"), Person(name: "John")]
let miscreant = findMiscreant(people: people)
alertForMiscreant(people: people)

//: [Next](@next)
