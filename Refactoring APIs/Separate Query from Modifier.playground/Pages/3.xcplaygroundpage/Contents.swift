//: [Previous](@previous)

import Foundation

// 3. Find each call of the original method. If that call uses the return value, replace the original call with a call to the query and insert a call to the original method below it. Test after each change.

struct Person {let name: String}

func findMiscreant(people: [Person]) -> String? {
    for p in people {
        if p.name == "Don" {
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
let miscreant = findMiscreant(people: people)
alertForMiscreant(people: people)

//: [Next](@next)
