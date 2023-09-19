//: [Previous](@previous)

import Foundation

// 1. Apply Encapsulate Variable if the reference to the collection isn’t already encapsulated.

struct Course { var name: String }
class Person {
    private var courses: [Course]
    init() { self.courses = [] }
    func getCourses() -> [Course] { return courses }
    func setCourses(courses: [Course]) { self.courses = courses }
}

let person = Person()
person.setCourses(courses: [Course(name: "Chemistry"), Course(name: "Geography")])
person.setCourses(courses: [Course(name: "Chemistry"), Course(name: "Physics")])
print("You are enrolled in \(person.getCourses())")

//: [Next](@next)
