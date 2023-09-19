//: [Previous](@previous)

import Foundation

struct Course { var name: String }
class Person {
    var courses: [Course]
    init() { self.courses = [] }
}

let person = Person()
person.courses = [Course(name: "Chemistry"), Course(name: "Geography")]
person.courses = [Course(name: "Chemistry"), Course(name: "Physics")]
print("You are enrolled in \(person.courses)")

//: [Next](@next)

