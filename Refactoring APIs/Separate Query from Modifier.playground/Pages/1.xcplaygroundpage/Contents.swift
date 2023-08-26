//: [Previous](@previous)

import Foundation

// 1. Copy the function, name it as a query.

struct Person {let name: String}

func findMiscreant(people: [Person]) -> String? {
    for p in people {
        if p.name == "Don" {
            print("Setting Alarms")
            return "Don"
        }
    }
    return nil
}

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
